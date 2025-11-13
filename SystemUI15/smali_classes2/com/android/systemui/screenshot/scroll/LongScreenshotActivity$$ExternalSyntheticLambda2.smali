.class public final synthetic Lcom/android/systemui/screenshot/scroll/LongScreenshotActivity$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/screenshot/scroll/LongScreenshotActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/screenshot/scroll/LongScreenshotActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/screenshot/scroll/LongScreenshotActivity$$ExternalSyntheticLambda2;->f$0:Lcom/android/systemui/screenshot/scroll/LongScreenshotActivity;

    return-void
.end method


# virtual methods
.method public final onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/screenshot/scroll/LongScreenshotActivity$$ExternalSyntheticLambda2;->f$0:Lcom/android/systemui/screenshot/scroll/LongScreenshotActivity;

    sget p1, Lcom/android/systemui/screenshot/scroll/LongScreenshotActivity;->$r8$clinit:I

    invoke-virtual {p0}, Lcom/android/systemui/screenshot/scroll/LongScreenshotActivity;->updateImageDimensions()V

    return-void
.end method
