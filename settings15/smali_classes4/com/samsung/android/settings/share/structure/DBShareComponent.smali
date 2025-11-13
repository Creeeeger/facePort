.class public final Lcom/samsung/android/settings/share/structure/DBShareComponent;
.super Lcom/samsung/android/settings/share/structure/ShareComponent;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final mIdx:I


# direct methods
.method public constructor <init>(IILandroid/content/ComponentName;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p3, p2, v0}, Lcom/samsung/android/settings/share/structure/ShareComponent;-><init>(Landroid/content/ComponentName;ILandroid/util/Pair;)V

    iput p1, p0, Lcom/samsung/android/settings/share/structure/DBShareComponent;->mIdx:I

    return-void
.end method
