.class public final Lcom/android/systemui/settings/brightness/BrightnessDetailAdapter$initBrightnessDetail$6;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/settings/brightness/BrightnessDetailAdapter;


# direct methods
.method public constructor <init>(Lcom/android/systemui/settings/brightness/BrightnessDetailAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/settings/brightness/BrightnessDetailAdapter$initBrightnessDetail$6;->this$0:Lcom/android/systemui/settings/brightness/BrightnessDetailAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Landroid/view/ViewGroup;

    iget-object p0, p0, Lcom/android/systemui/settings/brightness/BrightnessDetailAdapter$initBrightnessDetail$6;->this$0:Lcom/android/systemui/settings/brightness/BrightnessDetailAdapter;

    invoke-static {p0, p1}, Lcom/android/systemui/settings/brightness/BrightnessDetailAdapter;->access$addDividerView(Lcom/android/systemui/settings/brightness/BrightnessDetailAdapter;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method
