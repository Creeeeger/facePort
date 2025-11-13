.class public abstract Lcom/android/systemui/user/domain/model/ShowDialogRequestModel;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final dialogShower:Lcom/android/systemui/qs/user/UserSwitchDialogController$DialogShower;

.field public final expandable:Lcom/android/systemui/animation/Expandable;


# direct methods
.method private constructor <init>(Lcom/android/systemui/qs/user/UserSwitchDialogController$DialogShower;Lcom/android/systemui/animation/Expandable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/user/domain/model/ShowDialogRequestModel;->dialogShower:Lcom/android/systemui/qs/user/UserSwitchDialogController$DialogShower;

    iput-object p2, p0, Lcom/android/systemui/user/domain/model/ShowDialogRequestModel;->expandable:Lcom/android/systemui/animation/Expandable;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/systemui/qs/user/UserSwitchDialogController$DialogShower;Lcom/android/systemui/animation/Expandable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p4, p3, 0x1

    const/4 v0, 0x0

    if-eqz p4, :cond_0

    move-object p1, v0

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    move-object p2, v0

    :cond_1
    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/user/domain/model/ShowDialogRequestModel;-><init>(Lcom/android/systemui/qs/user/UserSwitchDialogController$DialogShower;Lcom/android/systemui/animation/Expandable;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/systemui/qs/user/UserSwitchDialogController$DialogShower;Lcom/android/systemui/animation/Expandable;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/user/domain/model/ShowDialogRequestModel;-><init>(Lcom/android/systemui/qs/user/UserSwitchDialogController$DialogShower;Lcom/android/systemui/animation/Expandable;)V

    return-void
.end method


# virtual methods
.method public getDialogShower()Lcom/android/systemui/qs/user/UserSwitchDialogController$DialogShower;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/user/domain/model/ShowDialogRequestModel;->dialogShower:Lcom/android/systemui/qs/user/UserSwitchDialogController$DialogShower;

    return-object p0
.end method

.method public getExpandable()Lcom/android/systemui/animation/Expandable;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/user/domain/model/ShowDialogRequestModel;->expandable:Lcom/android/systemui/animation/Expandable;

    return-object p0
.end method
