.class public final Lcom/android/systemui/qs/external/TileServices$2;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/qs/external/TileServices;

.field public final synthetic val$slot:Ljava/lang/String;

.field public final synthetic val$statusIcon:Lcom/android/internal/statusbar/StatusBarIcon;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/external/TileServices;Ljava/lang/String;Lcom/android/internal/statusbar/StatusBarIcon;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/qs/external/TileServices$2;->this$0:Lcom/android/systemui/qs/external/TileServices;

    iput-object p2, p0, Lcom/android/systemui/qs/external/TileServices$2;->val$slot:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/systemui/qs/external/TileServices$2;->val$statusIcon:Lcom/android/internal/statusbar/StatusBarIcon;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/qs/external/TileServices$2;->this$0:Lcom/android/systemui/qs/external/TileServices;

    iget-object v0, v0, Lcom/android/systemui/qs/external/TileServices;->mStatusBarIconController:Lcom/android/systemui/statusbar/phone/ui/StatusBarIconController;

    iget-object v1, p0, Lcom/android/systemui/qs/external/TileServices$2;->val$slot:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/systemui/qs/external/TileServices$2;->val$statusIcon:Lcom/android/internal/statusbar/StatusBarIcon;

    check-cast v0, Lcom/android/systemui/statusbar/phone/ui/StatusBarIconControllerImpl;

    if-nez p0, :cond_0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/ui/StatusBarIconControllerImpl;->removeAllIconsForSlot(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;->Companion:Lcom/android/systemui/statusbar/phone/StatusBarIconHolder$Companion;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p0, v2, Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;->icon:Lcom/android/internal/statusbar/StatusBarIcon;

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/phone/ui/StatusBarIconControllerImpl;->setIcon(Ljava/lang/String;Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;)V

    :goto_0
    return-void
.end method
