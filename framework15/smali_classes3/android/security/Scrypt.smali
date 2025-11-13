.class public Landroid/security/Scrypt;
.super Ljava/lang/Object;
.source "Scrypt.java"


# direct methods
.method public constructor greylist-max-o <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method native greylist-max-o nativeScrypt([B[BIIII)[B
.end method

.method public greylist-max-o scrypt([B[BIIII)[B
    .locals 1

    invoke-virtual/range {p0 .. p6}, Landroid/security/Scrypt;->nativeScrypt([B[BIIII)[B

    move-result-object v0

    return-object v0
.end method
