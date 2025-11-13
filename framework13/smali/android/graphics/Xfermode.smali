.class public Landroid/graphics/Xfermode;
.super Ljava/lang/Object;
.source "Xfermode.java"


# static fields
.field static final greylist-max-o DEFAULT:I


# instance fields
.field greylist-max-r porterDuffMode:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 35
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_OVER:Landroid/graphics/PorterDuff$Mode;

    iget v0, v0, Landroid/graphics/PorterDuff$Mode;->nativeInt:I

    sput v0, Landroid/graphics/Xfermode;->DEFAULT:I

    return-void
.end method

.method public constructor whitelist <init>()V
    .locals 1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    sget v0, Landroid/graphics/Xfermode;->DEFAULT:I

    iput v0, p0, Landroid/graphics/Xfermode;->porterDuffMode:I

    return-void
.end method
