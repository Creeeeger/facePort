.class public final synthetic Lcom/android/systemui/statusbar/phone/ui/StatusBarIconControllerImpl$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/statusbar/phone/ui/StatusBarIconControllerImpl;

.field public final synthetic f$1:I

.field public final synthetic f$2:Ljava/lang/String;

.field public final synthetic f$3:Z

.field public final synthetic f$4:Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/phone/ui/StatusBarIconControllerImpl;ILjava/lang/String;ZLcom/android/systemui/statusbar/phone/StatusBarIconHolder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/ui/StatusBarIconControllerImpl$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/statusbar/phone/ui/StatusBarIconControllerImpl;

    iput p2, p0, Lcom/android/systemui/statusbar/phone/ui/StatusBarIconControllerImpl$$ExternalSyntheticLambda1;->f$1:I

    iput-object p3, p0, Lcom/android/systemui/statusbar/phone/ui/StatusBarIconControllerImpl$$ExternalSyntheticLambda1;->f$2:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/android/systemui/statusbar/phone/ui/StatusBarIconControllerImpl$$ExternalSyntheticLambda1;->f$3:Z

    iput-object p5, p0, Lcom/android/systemui/statusbar/phone/ui/StatusBarIconControllerImpl$$ExternalSyntheticLambda1;->f$4:Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ui/StatusBarIconControllerImpl$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/statusbar/phone/ui/StatusBarIconControllerImpl;

    iget v1, p0, Lcom/android/systemui/statusbar/phone/ui/StatusBarIconControllerImpl$$ExternalSyntheticLambda1;->f$1:I

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/ui/StatusBarIconControllerImpl$$ExternalSyntheticLambda1;->f$2:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/ui/StatusBarIconControllerImpl$$ExternalSyntheticLambda1;->f$3:Z

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/ui/StatusBarIconControllerImpl$$ExternalSyntheticLambda1;->f$4:Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;

    check-cast p1, Lcom/android/systemui/statusbar/phone/ui/IconManager;

    if-nez v3, :cond_1

    invoke-virtual {v0, p1, v2}, Lcom/android/systemui/statusbar/phone/ui/StatusBarIconControllerImpl;->hideBySimplification(Lcom/android/systemui/statusbar/phone/ui/IconManager;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :goto_0
    const/4 v0, 0x1

    :goto_1
    invoke-virtual {p1, v1, v2, v0, p0}, Lcom/android/systemui/statusbar/phone/ui/IconManager;->onIconAdded(ILjava/lang/String;ZLcom/android/systemui/statusbar/phone/StatusBarIconHolder;)V

    return-void
.end method
