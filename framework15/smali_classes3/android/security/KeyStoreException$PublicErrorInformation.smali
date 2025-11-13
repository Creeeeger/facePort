.class final Landroid/security/KeyStoreException$PublicErrorInformation;
.super Ljava/lang/Object;
.source "KeyStoreException.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/security/KeyStoreException;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "PublicErrorInformation"
.end annotation


# instance fields
.field public final blacklist errorCode:I

.field public final blacklist indicators:I


# direct methods
.method constructor blacklist <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/security/KeyStoreException$PublicErrorInformation;->indicators:I

    iput p2, p0, Landroid/security/KeyStoreException$PublicErrorInformation;->errorCode:I

    return-void
.end method
