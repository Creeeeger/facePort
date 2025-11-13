.class public final synthetic Lcom/android/systemui/statusbar/phone/ui/StatusBarIconControllerImpl$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:I

.field public final synthetic f$1:Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;


# direct methods
.method public synthetic constructor <init>(ILcom/android/systemui/statusbar/phone/StatusBarIconHolder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/systemui/statusbar/phone/ui/StatusBarIconControllerImpl$$ExternalSyntheticLambda0;->f$0:I

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/ui/StatusBarIconControllerImpl$$ExternalSyntheticLambda0;->f$1:Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/phone/ui/StatusBarIconControllerImpl$$ExternalSyntheticLambda0;->f$0:I

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/ui/StatusBarIconControllerImpl$$ExternalSyntheticLambda0;->f$1:Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;

    check-cast p1, Lcom/android/systemui/statusbar/phone/ui/IconManager;

    invoke-virtual {p1, v0, p0}, Lcom/android/systemui/statusbar/phone/ui/IconManager;->onSetIconHolder(ILcom/android/systemui/statusbar/phone/StatusBarIconHolder;)V

    return-void
.end method
