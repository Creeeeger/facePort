.class public final Lcom/android/systemui/settings/brightness/BrightnessDetailAdapter$initBrightnessDetail$8;
.super Ljava/lang/Object;
.source "qb/95038059 db3c75f3dfc1e198c5997313fff67c86ad775b87c3fe11e5e20cca6a5c0102e0"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/settings/brightness/BrightnessDetailAdapter;


# direct methods
.method public constructor <init>(Lcom/android/systemui/settings/brightness/BrightnessDetailAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/settings/brightness/BrightnessDetailAdapter$initBrightnessDetail$8;->this$0:Lcom/android/systemui/settings/brightness/BrightnessDetailAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Landroid/view/ViewGroup;

    iget-object p0, p0, Lcom/android/systemui/settings/brightness/BrightnessDetailAdapter$initBrightnessDetail$8;->this$0:Lcom/android/systemui/settings/brightness/BrightnessDetailAdapter;

    invoke-static {p0, p1}, Lcom/android/systemui/settings/brightness/BrightnessDetailAdapter;->access$addDividerView(Lcom/android/systemui/settings/brightness/BrightnessDetailAdapter;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method
