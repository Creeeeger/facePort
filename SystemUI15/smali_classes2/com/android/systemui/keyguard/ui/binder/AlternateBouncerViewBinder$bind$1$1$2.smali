.class final Lcom/android/systemui/keyguard/ui/binder/AlternateBouncerViewBinder$bind$1$1$2;
.super Lkotlin/jvm/internal/Lambda;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1;"
    }
.end annotation


# instance fields
.field final synthetic $swipeUpAnywhereGestureHandler:Lcom/android/systemui/keyguard/ui/SwipeUpAnywhereGestureHandler;

.field final synthetic $tapGestureDetector:Lcom/android/systemui/statusbar/gesture/TapGestureDetector;


# direct methods
.method public constructor <init>(Lcom/android/systemui/keyguard/ui/SwipeUpAnywhereGestureHandler;Lcom/android/systemui/statusbar/gesture/TapGestureDetector;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/keyguard/ui/binder/AlternateBouncerViewBinder$bind$1$1$2;->$swipeUpAnywhereGestureHandler:Lcom/android/systemui/keyguard/ui/SwipeUpAnywhereGestureHandler;

    iput-object p2, p0, Lcom/android/systemui/keyguard/ui/binder/AlternateBouncerViewBinder$bind$1$1$2;->$tapGestureDetector:Lcom/android/systemui/statusbar/gesture/TapGestureDetector;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Ljava/lang/Throwable;

    iget-object p1, p0, Lcom/android/systemui/keyguard/ui/binder/AlternateBouncerViewBinder$bind$1$1$2;->$swipeUpAnywhereGestureHandler:Lcom/android/systemui/keyguard/ui/SwipeUpAnywhereGestureHandler;

    const-string v0, "AlternateBouncer-SWIPE"

    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/gesture/GenericGestureDetector;->removeOnGestureDetectedCallback(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/systemui/keyguard/ui/binder/AlternateBouncerViewBinder$bind$1$1$2;->$tapGestureDetector:Lcom/android/systemui/statusbar/gesture/TapGestureDetector;

    const-string p1, "AlternateBouncer-TAP"

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/gesture/GenericGestureDetector;->removeOnGestureDetectedCallback(Ljava/lang/String;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
