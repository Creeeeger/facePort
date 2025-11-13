.class public final Lcom/android/systemui/statusbar/phone/ui/StatusBarIconControllerImpl$2;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/statusbar/CommandQueue$Callbacks;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/phone/ui/StatusBarIconControllerImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/phone/ui/StatusBarIconControllerImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/ui/StatusBarIconControllerImpl$2;->this$0:Lcom/android/systemui/statusbar/phone/ui/StatusBarIconControllerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final removeIcon(Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/android/systemui/statusbar/phone/ui/StatusBarIconControllerImpl;->EXTERNAL_SLOT_SUFFIX:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/ui/StatusBarIconControllerImpl$2;->this$0:Lcom/android/systemui/statusbar/phone/ui/StatusBarIconControllerImpl;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/ui/StatusBarIconControllerImpl;->removeAllIconsForSlot(Ljava/lang/String;)V

    return-void
.end method

.method public final setIcon(Ljava/lang/String;Lcom/android/internal/statusbar/StatusBarIcon;)V
    .locals 2

    sget-object v0, Lcom/android/systemui/statusbar/phone/ui/StatusBarIconControllerImpl;->EXTERNAL_SLOT_SUFFIX:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/ui/StatusBarIconControllerImpl$2;->this$0:Lcom/android/systemui/statusbar/phone/ui/StatusBarIconControllerImpl;

    if-nez p2, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/ui/StatusBarIconControllerImpl;->removeAllIconsForSlot(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;->Companion:Lcom/android/systemui/statusbar/phone/StatusBarIconHolder$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p2, v0, Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;->icon:Lcom/android/internal/statusbar/StatusBarIcon;

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/phone/ui/StatusBarIconControllerImpl;->setIcon(Ljava/lang/String;Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;)V

    :goto_0
    return-void
.end method
