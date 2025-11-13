.class public final Lcom/android/systemui/media/CoverMusicWidgetController$widgetDisableRunnable$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/media/CoverMusicWidgetController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/media/CoverMusicWidgetController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/media/CoverMusicWidgetController$widgetDisableRunnable$1;->this$0:Lcom/android/systemui/media/CoverMusicWidgetController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/media/CoverMusicWidgetController$widgetDisableRunnable$1;->this$0:Lcom/android/systemui/media/CoverMusicWidgetController;

    sget v0, Lcom/android/systemui/media/CoverMusicWidgetController;->$r8$clinit:I

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/media/CoverMusicWidgetController;->enableWidget(Z)V

    return-void
.end method
