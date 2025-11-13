.class public final Landroid/app/RemoteInput$Builder;
.super Ljava/lang/Object;
.source "RemoteInput.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/RemoteInput;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private final greylist-max-o mAllowedDataTypes:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mChoices:[Ljava/lang/CharSequence;

.field private blacklist mEditChoicesBeforeSending:I

.field private final greylist-max-o mExtras:Landroid/os/Bundle;

.field private greylist-max-o mFlags:I

.field private greylist-max-o mLabel:Ljava/lang/CharSequence;

.field private final greylist-max-o mResultKey:Ljava/lang/String;


# direct methods
.method public constructor whitelist <init>(Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Landroid/app/RemoteInput$Builder;->mAllowedDataTypes:Landroid/util/ArraySet;

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/app/RemoteInput$Builder;->mExtras:Landroid/os/Bundle;

    const/4 v0, 0x1

    iput v0, p0, Landroid/app/RemoteInput$Builder;->mFlags:I

    const/4 v0, 0x0

    iput v0, p0, Landroid/app/RemoteInput$Builder;->mEditChoicesBeforeSending:I

    if-eqz p1, :cond_0

    iput-object p1, p0, Landroid/app/RemoteInput$Builder;->mResultKey:Ljava/lang/String;

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Result key can\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private greylist-max-o setFlag(IZ)V
    .locals 2

    if-eqz p2, :cond_0

    iget v0, p0, Landroid/app/RemoteInput$Builder;->mFlags:I

    or-int/2addr v0, p1

    iput v0, p0, Landroid/app/RemoteInput$Builder;->mFlags:I

    goto :goto_0

    :cond_0
    iget v0, p0, Landroid/app/RemoteInput$Builder;->mFlags:I

    not-int v1, p1

    and-int/2addr v0, v1

    iput v0, p0, Landroid/app/RemoteInput$Builder;->mFlags:I

    :goto_0
    return-void
.end method


# virtual methods
.method public whitelist addExtras(Landroid/os/Bundle;)Landroid/app/RemoteInput$Builder;
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Landroid/app/RemoteInput$Builder;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    :cond_0
    return-object p0
.end method

.method public whitelist build()Landroid/app/RemoteInput;
    .locals 10

    new-instance v9, Landroid/app/RemoteInput;

    iget-object v1, p0, Landroid/app/RemoteInput$Builder;->mResultKey:Ljava/lang/String;

    iget-object v2, p0, Landroid/app/RemoteInput$Builder;->mLabel:Ljava/lang/CharSequence;

    iget-object v3, p0, Landroid/app/RemoteInput$Builder;->mChoices:[Ljava/lang/CharSequence;

    iget v4, p0, Landroid/app/RemoteInput$Builder;->mFlags:I

    iget v5, p0, Landroid/app/RemoteInput$Builder;->mEditChoicesBeforeSending:I

    iget-object v6, p0, Landroid/app/RemoteInput$Builder;->mExtras:Landroid/os/Bundle;

    iget-object v7, p0, Landroid/app/RemoteInput$Builder;->mAllowedDataTypes:Landroid/util/ArraySet;

    const/4 v8, 0x0

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Landroid/app/RemoteInput;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;[Ljava/lang/CharSequence;IILandroid/os/Bundle;Landroid/util/ArraySet;Landroid/app/RemoteInput-IA;)V

    return-object v9
.end method

.method public whitelist getExtras()Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Landroid/app/RemoteInput$Builder;->mExtras:Landroid/os/Bundle;

    return-object v0
.end method

.method public whitelist setAllowDataType(Ljava/lang/String;Z)Landroid/app/RemoteInput$Builder;
    .locals 1

    if-eqz p2, :cond_0

    iget-object v0, p0, Landroid/app/RemoteInput$Builder;->mAllowedDataTypes:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/app/RemoteInput$Builder;->mAllowedDataTypes:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    :goto_0
    return-object p0
.end method

.method public whitelist setAllowFreeFormInput(Z)Landroid/app/RemoteInput$Builder;
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Landroid/app/RemoteInput$Builder;->setFlag(IZ)V

    return-object p0
.end method

.method public whitelist setChoices([Ljava/lang/CharSequence;)Landroid/app/RemoteInput$Builder;
    .locals 3

    if-nez p1, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/RemoteInput$Builder;->mChoices:[Ljava/lang/CharSequence;

    goto :goto_1

    :cond_0
    array-length v0, p1

    new-array v0, v0, [Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/app/RemoteInput$Builder;->mChoices:[Ljava/lang/CharSequence;

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Landroid/app/RemoteInput$Builder;->mChoices:[Ljava/lang/CharSequence;

    aget-object v2, p1, v0

    invoke-static {v2}, Landroid/app/Notification;->safeCharSequence(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-object p0
.end method

.method public whitelist setEditChoicesBeforeSending(I)Landroid/app/RemoteInput$Builder;
    .locals 0

    iput p1, p0, Landroid/app/RemoteInput$Builder;->mEditChoicesBeforeSending:I

    return-object p0
.end method

.method public whitelist setLabel(Ljava/lang/CharSequence;)Landroid/app/RemoteInput$Builder;
    .locals 1

    invoke-static {p1}, Landroid/app/Notification;->safeCharSequence(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/app/RemoteInput$Builder;->mLabel:Ljava/lang/CharSequence;

    return-object p0
.end method
