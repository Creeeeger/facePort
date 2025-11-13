.class Lcom/samsung/android/settings/usefulfeature/SwipeForSplitViewSettings$1;
.super Landroid/database/ContentObserver;
.source "SwipeForSplitViewSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/usefulfeature/SwipeForSplitViewSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/usefulfeature/SwipeForSplitViewSettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/usefulfeature/SwipeForSplitViewSettings;Landroid/os/Handler;)V
    .locals 0

    .line 52
    iput-object p1, p0, Lcom/samsung/android/settings/usefulfeature/SwipeForSplitViewSettings$1;->this$0:Lcom/samsung/android/settings/usefulfeature/SwipeForSplitViewSettings;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/samsung/android/settings/usefulfeature/SwipeForSplitViewSettings$1;->this$0:Lcom/samsung/android/settings/usefulfeature/SwipeForSplitViewSettings;

    invoke-static {p0}, Lcom/samsung/android/settings/usefulfeature/SwipeForSplitViewSettings;->-$$Nest$mupdateSwitchAndPreferenceState(Lcom/samsung/android/settings/usefulfeature/SwipeForSplitViewSettings;)V

    return-void
.end method
