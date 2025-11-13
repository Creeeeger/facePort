.class public Lcom/samsung/android/provider/SemKnoxPolicyContract$KioskMode;
.super Ljava/lang/Object;
.source "SemKnoxPolicyContract.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/provider/SemKnoxPolicyContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "KioskMode"
.end annotation


# static fields
.field public static final blacklist KIOSK_HOME_PACKAGE:Ljava/lang/String; = "getKioskHomePackage"

.field public static final whitelist KIOSK_MODE_AIRCOMMANDMODE_ALLOWED:Ljava/lang/String; = "isAirCommandModeAllowed"

.field public static final whitelist KIOSK_MODE_ENABLED:Ljava/lang/String; = "isKioskModeEnabled"

.field public static final blacklist NAME:Ljava/lang/String; = "KioskMode"

.field public static final whitelist URI:Ljava/lang/String; = "content://com.sec.knox.provider2/KioskMode"


# direct methods
.method public constructor whitelist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
