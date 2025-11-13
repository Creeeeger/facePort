.class Lcom/samsung/android/settings/display/SecDreamSettings$PackageReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SecDreamSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/display/SecDreamSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PackageReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/display/SecDreamSettings;


# direct methods
.method private constructor <init>(Lcom/samsung/android/settings/display/SecDreamSettings;)V
    .locals 0

    .line 720
    iput-object p1, p0, Lcom/samsung/android/settings/display/SecDreamSettings$PackageReceiver;->this$0:Lcom/samsung/android/settings/display/SecDreamSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/settings/display/SecDreamSettings;Lcom/samsung/android/settings/display/SecDreamSettings$PackageReceiver-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/display/SecDreamSettings$PackageReceiver;-><init>(Lcom/samsung/android/settings/display/SecDreamSettings;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string p2, "PackageReceiver.onReceive"

    .line 723
    invoke-static {p2, p1}, Lcom/samsung/android/settings/display/SecDreamSettings;->-$$Nest$smlogD(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 724
    iget-object p0, p0, Lcom/samsung/android/settings/display/SecDreamSettings$PackageReceiver;->this$0:Lcom/samsung/android/settings/display/SecDreamSettings;

    invoke-static {p0}, Lcom/samsung/android/settings/display/SecDreamSettings;->-$$Nest$mrefreshFromBackend(Lcom/samsung/android/settings/display/SecDreamSettings;)V

    return-void
.end method
