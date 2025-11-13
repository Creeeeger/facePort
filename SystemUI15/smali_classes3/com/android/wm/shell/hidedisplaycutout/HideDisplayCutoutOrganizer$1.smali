.class public final Lcom/android/wm/shell/hidedisplaycutout/HideDisplayCutoutOrganizer$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/wm/shell/common/DisplayController$OnDisplaysChangedListener;


# instance fields
.field public final synthetic this$0:Lcom/android/wm/shell/hidedisplaycutout/HideDisplayCutoutOrganizer;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/hidedisplaycutout/HideDisplayCutoutOrganizer;)V
    .locals 0

    iput-object p1, p0, Lcom/android/wm/shell/hidedisplaycutout/HideDisplayCutoutOrganizer$1;->this$0:Lcom/android/wm/shell/hidedisplaycutout/HideDisplayCutoutOrganizer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDisplayAdded(I)V
    .locals 0

    iget-object p0, p0, Lcom/android/wm/shell/hidedisplaycutout/HideDisplayCutoutOrganizer$1;->this$0:Lcom/android/wm/shell/hidedisplaycutout/HideDisplayCutoutOrganizer;

    invoke-static {p0, p1}, Lcom/android/wm/shell/hidedisplaycutout/HideDisplayCutoutOrganizer;->-$$Nest$monDisplayChanged(Lcom/android/wm/shell/hidedisplaycutout/HideDisplayCutoutOrganizer;I)V

    return-void
.end method

.method public final onDisplayConfigurationChanged(ILandroid/content/res/Configuration;)V
    .locals 0

    iget-object p0, p0, Lcom/android/wm/shell/hidedisplaycutout/HideDisplayCutoutOrganizer$1;->this$0:Lcom/android/wm/shell/hidedisplaycutout/HideDisplayCutoutOrganizer;

    invoke-static {p0, p1}, Lcom/android/wm/shell/hidedisplaycutout/HideDisplayCutoutOrganizer;->-$$Nest$monDisplayChanged(Lcom/android/wm/shell/hidedisplaycutout/HideDisplayCutoutOrganizer;I)V

    return-void
.end method
