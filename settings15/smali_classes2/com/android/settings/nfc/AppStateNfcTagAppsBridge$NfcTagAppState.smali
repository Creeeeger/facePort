.class public final Lcom/android/settings/nfc/AppStateNfcTagAppsBridge$NfcTagAppState;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final mIsAllowed:Z

.field public final mIsExisted:Z


# direct methods
.method public constructor <init>(ZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/android/settings/nfc/AppStateNfcTagAppsBridge$NfcTagAppState;->mIsExisted:Z

    iput-boolean p2, p0, Lcom/android/settings/nfc/AppStateNfcTagAppsBridge$NfcTagAppState;->mIsAllowed:Z

    return-void
.end method
