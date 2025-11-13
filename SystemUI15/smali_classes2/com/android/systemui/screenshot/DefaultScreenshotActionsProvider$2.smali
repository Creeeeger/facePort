.class final Lcom/android/systemui/screenshot/DefaultScreenshotActionsProvider$2;
.super Lkotlin/jvm/internal/Lambda;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/screenshot/DefaultScreenshotActionsProvider;


# direct methods
.method public constructor <init>(Lcom/android/systemui/screenshot/DefaultScreenshotActionsProvider;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/screenshot/DefaultScreenshotActionsProvider$2;->this$0:Lcom/android/systemui/screenshot/DefaultScreenshotActionsProvider;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 4

    sget v0, Lcom/android/systemui/log/DebugLogger;->$r8$clinit:I

    iget-object v0, p0, Lcom/android/systemui/screenshot/DefaultScreenshotActionsProvider$2;->this$0:Lcom/android/systemui/screenshot/DefaultScreenshotActionsProvider;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    move-result-object v0

    invoke-virtual {v0}, Lkotlin/jvm/internal/ClassReference;->getSimpleName()Ljava/lang/String;

    iget-object v0, p0, Lcom/android/systemui/screenshot/DefaultScreenshotActionsProvider$2;->this$0:Lcom/android/systemui/screenshot/DefaultScreenshotActionsProvider;

    iget-object v1, v0, Lcom/android/systemui/screenshot/DefaultScreenshotActionsProvider;->uiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    sget-object v2, Lcom/android/systemui/screenshot/ScreenshotEvent;->SCREENSHOT_SHARE_TAPPED:Lcom/android/systemui/screenshot/ScreenshotEvent;

    iget-object v0, v0, Lcom/android/systemui/screenshot/DefaultScreenshotActionsProvider;->request:Lcom/android/systemui/screenshot/ScreenshotData;

    invoke-virtual {v0}, Lcom/android/systemui/screenshot/ScreenshotData;->getPackageNameString()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3, v0}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;ILjava/lang/String;)V

    iget-object p0, p0, Lcom/android/systemui/screenshot/DefaultScreenshotActionsProvider$2;->this$0:Lcom/android/systemui/screenshot/DefaultScreenshotActionsProvider;

    new-instance v0, Lcom/android/systemui/screenshot/DefaultScreenshotActionsProvider$2$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/screenshot/DefaultScreenshotActionsProvider$2$2;-><init>(Lcom/android/systemui/screenshot/DefaultScreenshotActionsProvider;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
