.class public final Lcom/android/systemui/statusbar/phone/StatusBarIconHolder$BindableIconHolder;
.super Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final initializer:Lcom/android/systemui/statusbar/pipeline/icons/shared/model/ModernStatusBarViewCreator;

.field public isVisible:Z

.field public final slot:Ljava/lang/String;

.field public final type:I


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/pipeline/icons/shared/model/ModernStatusBarViewCreator;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconHolder$BindableIconHolder;->initializer:Lcom/android/systemui/statusbar/pipeline/icons/shared/model/ModernStatusBarViewCreator;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconHolder$BindableIconHolder;->slot:Ljava/lang/String;

    const/4 p1, 0x5

    iput p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconHolder$BindableIconHolder;->type:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconHolder$BindableIconHolder;->isVisible:Z

    return-void
.end method


# virtual methods
.method public final getType()I
    .locals 0

    iget p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconHolder$BindableIconHolder;->type:I

    return p0
.end method

.method public final isVisible()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconHolder$BindableIconHolder;->isVisible:Z

    return p0
.end method

.method public final setVisible(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconHolder$BindableIconHolder;->isVisible:Z

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "StatusBarIconHolder(type=BINDABLE, slot="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconHolder$BindableIconHolder;->slot:Ljava/lang/String;

    const-string v1, ")"

    invoke-static {v0, p0, v1}, Landroidx/activity/ComponentActivity$1$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
