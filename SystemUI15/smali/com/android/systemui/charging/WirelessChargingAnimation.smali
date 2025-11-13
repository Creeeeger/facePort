.class public final Lcom/android/systemui/charging/WirelessChargingAnimation;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final DEBUG:Z

.field public static mPreviousWirelessChargingView:Lcom/android/systemui/charging/WirelessChargingAnimation$WirelessChargingView;


# instance fields
.field public final mCurrentWirelessChargingView:Lcom/android/systemui/charging/WirelessChargingAnimation$WirelessChargingView;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "WirelessChargingView"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/charging/WirelessChargingAnimation;->DEBUG:Z

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/os/Looper;IILcom/android/systemui/charging/WirelessChargingAnimation$Callback;ZLcom/android/systemui/surfaceeffects/ripple/RippleShader$RippleShape;Lcom/android/internal/logging/UiEventLogger;)V
    .locals 10

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v9, Lcom/android/systemui/charging/WirelessChargingAnimation$WirelessChargingView;

    move-object v0, v9

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    invoke-direct/range {v0 .. v8}, Lcom/android/systemui/charging/WirelessChargingAnimation$WirelessChargingView;-><init>(Landroid/content/Context;Landroid/os/Looper;IILcom/android/systemui/charging/WirelessChargingAnimation$Callback;ZLcom/android/systemui/surfaceeffects/ripple/RippleShader$RippleShape;Lcom/android/internal/logging/UiEventLogger;)V

    move-object v0, p0

    iput-object v9, v0, Lcom/android/systemui/charging/WirelessChargingAnimation;->mCurrentWirelessChargingView:Lcom/android/systemui/charging/WirelessChargingAnimation$WirelessChargingView;

    return-void
.end method

.method public static makeWirelessChargingAnimation(Landroid/content/Context;ILcom/android/systemui/statusbar/phone/CentralSurfacesImpl$7;Lcom/android/systemui/surfaceeffects/ripple/RippleShader$RippleShape;Lcom/android/internal/logging/UiEventLogger;)Lcom/android/systemui/charging/WirelessChargingAnimation;
    .locals 10

    new-instance v9, Lcom/android/systemui/charging/WirelessChargingAnimation;

    const/4 v2, 0x0

    const/4 v3, -0x1

    const/4 v6, 0x0

    move-object v0, v9

    move-object v1, p0

    move v4, p1

    move-object v5, p2

    move-object v7, p3

    move-object v8, p4

    invoke-direct/range {v0 .. v8}, Lcom/android/systemui/charging/WirelessChargingAnimation;-><init>(Landroid/content/Context;Landroid/os/Looper;IILcom/android/systemui/charging/WirelessChargingAnimation$Callback;ZLcom/android/systemui/surfaceeffects/ripple/RippleShader$RippleShape;Lcom/android/internal/logging/UiEventLogger;)V

    return-object v9
.end method
