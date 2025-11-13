.class public final synthetic Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    iput p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mUserCount:I

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->updateVisibilities()V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
