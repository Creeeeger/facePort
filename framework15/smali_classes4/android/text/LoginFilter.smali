.class public abstract Landroid/text/LoginFilter;
.super Ljava/lang/Object;
.source "LoginFilter.java"

# interfaces
.implements Landroid/text/InputFilter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/text/LoginFilter$PasswordFilterGMail;,
        Landroid/text/LoginFilter$UsernameFilterGeneric;,
        Landroid/text/LoginFilter$UsernameFilterGMail;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private greylist-max-o mAppendInvalid:Z


# direct methods
.method constructor greylist-max-o <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/text/LoginFilter;->mAppendInvalid:Z

    return-void
.end method

.method constructor greylist-max-o <init>(Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Landroid/text/LoginFilter;->mAppendInvalid:Z

    return-void
.end method


# virtual methods
.method public whitelist filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .locals 5

    invoke-virtual {p0}, Landroid/text/LoginFilter;->onStart()V

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p5, :cond_1

    invoke-interface {p4, v0}, Landroid/text/Spanned;->charAt(I)C

    move-result v1

    invoke-virtual {p0, v1}, Landroid/text/LoginFilter;->isAllowed(C)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0, v1}, Landroid/text/LoginFilter;->onInvalidCharacter(C)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    const/4 v1, 0x0

    move v2, p2

    :goto_1
    if-ge v2, p3, :cond_5

    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-virtual {p0, v3}, Landroid/text/LoginFilter;->isAllowed(C)Z

    move-result v4

    if-eqz v4, :cond_2

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_2
    iget-boolean v4, p0, Landroid/text/LoginFilter;->mAppendInvalid:Z

    if-eqz v4, :cond_3

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3
    if-nez v0, :cond_4

    new-instance v4, Landroid/text/SpannableStringBuilder;

    invoke-direct {v4, p1, p2, p3}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;II)V

    move-object v0, v4

    sub-int v1, v2, p2

    :cond_4
    add-int/lit8 v4, v1, 0x1

    invoke-virtual {v0, v1, v4}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    :goto_2
    invoke-virtual {p0, v3}, Landroid/text/LoginFilter;->onInvalidCharacter(C)V

    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_5
    move v2, p6

    :goto_4
    invoke-interface {p4}, Landroid/text/Spanned;->length()I

    move-result v3

    if-ge v2, v3, :cond_7

    invoke-interface {p4, v2}, Landroid/text/Spanned;->charAt(I)C

    move-result v3

    invoke-virtual {p0, v3}, Landroid/text/LoginFilter;->isAllowed(C)Z

    move-result v4

    if-nez v4, :cond_6

    invoke-virtual {p0, v3}, Landroid/text/LoginFilter;->onInvalidCharacter(C)V

    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_7
    invoke-virtual {p0}, Landroid/text/LoginFilter;->onStop()V

    return-object v0
.end method

.method public abstract whitelist isAllowed(C)Z
.end method

.method public whitelist onInvalidCharacter(C)V
    .locals 0

    return-void
.end method

.method public whitelist onStart()V
    .locals 0

    return-void
.end method

.method public whitelist onStop()V
    .locals 0

    return-void
.end method
