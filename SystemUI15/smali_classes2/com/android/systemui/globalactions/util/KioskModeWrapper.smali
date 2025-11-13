.class public final Lcom/android/systemui/globalactions/util/KioskModeWrapper;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final mKioskMode:Lcom/samsung/android/knox/kiosk/KioskMode;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/samsung/android/knox/kiosk/KioskMode;->getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/kiosk/KioskMode;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/globalactions/util/KioskModeWrapper;->mKioskMode:Lcom/samsung/android/knox/kiosk/KioskMode;

    return-void
.end method
