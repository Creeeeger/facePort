.class Lcom/samsung/android/settings/display/SecDreamSettings$1;
.super Landroid/database/ContentObserver;
.source "SecDreamSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/display/SecDreamSettings;->registerObserver(Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/display/SecDreamSettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/display/SecDreamSettings;Landroid/os/Handler;)V
    .locals 0

    .line 106
    iput-object p1, p0, Lcom/samsung/android/settings/display/SecDreamSettings$1;->this$0:Lcom/samsung/android/settings/display/SecDreamSettings;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 0

    .line 109
    iget-object p1, p0, Lcom/samsung/android/settings/display/SecDreamSettings$1;->this$0:Lcom/samsung/android/settings/display/SecDreamSettings;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/samsung/android/settings/display/SecDreamSettings;->-$$Nest$fputmForceRefreshFromBackend(Lcom/samsung/android/settings/display/SecDreamSettings;Z)V

    .line 110
    iget-object p0, p0, Lcom/samsung/android/settings/display/SecDreamSettings$1;->this$0:Lcom/samsung/android/settings/display/SecDreamSettings;

    invoke-static {p0}, Lcom/samsung/android/settings/display/SecDreamSettings;->-$$Nest$mrefreshFromBackend(Lcom/samsung/android/settings/display/SecDreamSettings;)V

    return-void
.end method
