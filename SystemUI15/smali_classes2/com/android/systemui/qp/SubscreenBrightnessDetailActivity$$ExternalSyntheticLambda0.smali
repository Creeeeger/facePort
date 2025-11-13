.class public final synthetic Lcom/android/systemui/qp/SubscreenBrightnessDetailActivity$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/qp/SubscreenBrightnessDetailActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/qp/SubscreenBrightnessDetailActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/qp/SubscreenBrightnessDetailActivity$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/qp/SubscreenBrightnessDetailActivity;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/qp/SubscreenBrightnessDetailActivity$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/qp/SubscreenBrightnessDetailActivity;

    sget-object p1, Lcom/android/systemui/qp/SubscreenBrightnessDetailActivity;->BRIGHTNESS_MODE_URI:Landroid/net/Uri;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method
