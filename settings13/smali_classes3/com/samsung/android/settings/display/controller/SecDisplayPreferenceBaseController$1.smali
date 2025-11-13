.class Lcom/samsung/android/settings/display/controller/SecDisplayPreferenceBaseController$1;
.super Landroid/database/ContentObserver;
.source "SecDisplayPreferenceBaseController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/display/controller/SecDisplayPreferenceBaseController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/display/controller/SecDisplayPreferenceBaseController;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/display/controller/SecDisplayPreferenceBaseController;Landroid/os/Handler;)V
    .locals 0

    .line 46
    iput-object p1, p0, Lcom/samsung/android/settings/display/controller/SecDisplayPreferenceBaseController$1;->this$0:Lcom/samsung/android/settings/display/controller/SecDisplayPreferenceBaseController;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/samsung/android/settings/display/controller/SecDisplayPreferenceBaseController$1;->this$0:Lcom/samsung/android/settings/display/controller/SecDisplayPreferenceBaseController;

    invoke-virtual {p0, p2}, Lcom/samsung/android/settings/display/controller/SecDisplayPreferenceBaseController;->updatePreference(Landroid/net/Uri;)V

    return-void
.end method
