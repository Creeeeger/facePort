.class Lcom/samsung/android/settings/usefulfeature/SwipeForPopUpViewSettings$1;
.super Landroid/database/ContentObserver;
.source "SwipeForPopUpViewSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/usefulfeature/SwipeForPopUpViewSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/usefulfeature/SwipeForPopUpViewSettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/usefulfeature/SwipeForPopUpViewSettings;Landroid/os/Handler;)V
    .locals 0

    .line 50
    iput-object p1, p0, Lcom/samsung/android/settings/usefulfeature/SwipeForPopUpViewSettings$1;->this$0:Lcom/samsung/android/settings/usefulfeature/SwipeForPopUpViewSettings;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/samsung/android/settings/usefulfeature/SwipeForPopUpViewSettings$1;->this$0:Lcom/samsung/android/settings/usefulfeature/SwipeForPopUpViewSettings;

    invoke-static {p0}, Lcom/samsung/android/settings/usefulfeature/SwipeForPopUpViewSettings;->-$$Nest$mupdateSwitchAndPreferenceState(Lcom/samsung/android/settings/usefulfeature/SwipeForPopUpViewSettings;)V

    return-void
.end method
