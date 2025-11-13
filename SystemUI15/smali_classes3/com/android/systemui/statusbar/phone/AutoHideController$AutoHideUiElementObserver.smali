.class public final Lcom/android/systemui/statusbar/phone/AutoHideController$AutoHideUiElementObserver;
.super Lcom/android/systemui/statusbar/phone/SystemBarObserver;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final mList:Ljava/util/List;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/SystemBarObserver;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/AutoHideController$AutoHideUiElementObserver;->mList:Ljava/util/List;

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/AutoHideController$AutoHideUiElementObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public final notify(Ljava/util/function/Consumer;)V
    .locals 2

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/AutoHideController$AutoHideUiElementObserver;->mList:Ljava/util/List;

    new-instance v0, Lcom/android/systemui/statusbar/phone/AutoHideController$$ExternalSyntheticLambda0;

    const/4 v1, 0x5

    invoke-direct {v0, p1, v1}, Lcom/android/systemui/statusbar/phone/AutoHideController$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;I)V

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method
