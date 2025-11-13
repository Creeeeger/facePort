.class Lcom/samsung/android/settings/eternal/KnoxRestrictionsService$Injector;
.super Ljava/lang/Object;
.source "KnoxRestrictionsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/eternal/KnoxRestrictionsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Injector"
.end annotation


# instance fields
.field public final mContext:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    iput-object p1, p0, Lcom/samsung/android/settings/eternal/KnoxRestrictionsService$Injector;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method getApplicationRestrictionsManager()Lcom/samsung/android/knox/appconfig/ApplicationRestrictionsManager;
    .locals 0

    .line 91
    iget-object p0, p0, Lcom/samsung/android/settings/eternal/KnoxRestrictionsService$Injector;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/samsung/android/knox/appconfig/ApplicationRestrictionsManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/appconfig/ApplicationRestrictionsManager;

    move-result-object p0

    return-object p0
.end method

.method getKioskMode()Lcom/samsung/android/knox/kiosk/KioskMode;
    .locals 0

    .line 95
    iget-object p0, p0, Lcom/samsung/android/settings/eternal/KnoxRestrictionsService$Injector;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/samsung/android/knox/kiosk/KioskMode;->getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/kiosk/KioskMode;

    move-result-object p0

    return-object p0
.end method

.method getPackageManager()Landroid/content/pm/PackageManager;
    .locals 0

    .line 83
    iget-object p0, p0, Lcom/samsung/android/settings/eternal/KnoxRestrictionsService$Injector;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    return-object p0
.end method

.method getUserManager()Landroid/os/UserManager;
    .locals 0

    .line 87
    iget-object p0, p0, Lcom/samsung/android/settings/eternal/KnoxRestrictionsService$Injector;->mContext:Landroid/content/Context;

    invoke-static {p0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object p0

    return-object p0
.end method
