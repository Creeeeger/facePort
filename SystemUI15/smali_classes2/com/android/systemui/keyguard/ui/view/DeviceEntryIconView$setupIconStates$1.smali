.class public final Lcom/android/systemui/keyguard/ui/view/DeviceEntryIconView$setupIconStates$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/airbnb/lottie/LottieListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/keyguard/ui/view/DeviceEntryIconView;


# direct methods
.method public constructor <init>(Lcom/android/systemui/keyguard/ui/view/DeviceEntryIconView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/keyguard/ui/view/DeviceEntryIconView$setupIconStates$1;->this$0:Lcom/android/systemui/keyguard/ui/view/DeviceEntryIconView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onResult(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/airbnb/lottie/LottieComposition;

    iget-object p0, p0, Lcom/android/systemui/keyguard/ui/view/DeviceEntryIconView$setupIconStates$1;->this$0:Lcom/android/systemui/keyguard/ui/view/DeviceEntryIconView;

    iget-object p0, p0, Lcom/android/systemui/keyguard/ui/view/DeviceEntryIconView;->aodFpDrawable:Lcom/airbnb/lottie/LottieDrawable;

    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/LottieDrawable;->setComposition(Lcom/airbnb/lottie/LottieComposition;)Z

    return-void
.end method
