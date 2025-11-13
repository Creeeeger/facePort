.class public final Lcom/android/systemui/navigationbar/NavBarButtonClickLogger;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final buffer:Lcom/android/systemui/log/LogBuffer;


# direct methods
.method public constructor <init>(Lcom/android/systemui/log/LogBuffer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/navigationbar/NavBarButtonClickLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    return-void
.end method


# virtual methods
.method public final logBackButtonClick()V
    .locals 4

    sget-object v0, Lcom/android/systemui/log/core/LogLevel;->DEBUG:Lcom/android/systemui/log/core/LogLevel;

    sget-object v1, Lcom/android/systemui/navigationbar/NavBarButtonClickLogger$logBackButtonClick$2;->INSTANCE:Lcom/android/systemui/navigationbar/NavBarButtonClickLogger$logBackButtonClick$2;

    const/4 v2, 0x0

    iget-object p0, p0, Lcom/android/systemui/navigationbar/NavBarButtonClickLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    const-string v3, "NavBarButtonClick"

    invoke-virtual {p0, v3, v0, v1, v2}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/core/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/core/LogMessage;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/core/LogMessage;)V

    return-void
.end method

.method public final logHomeButtonClick()V
    .locals 4

    sget-object v0, Lcom/android/systemui/log/core/LogLevel;->DEBUG:Lcom/android/systemui/log/core/LogLevel;

    sget-object v1, Lcom/android/systemui/navigationbar/NavBarButtonClickLogger$logHomeButtonClick$2;->INSTANCE:Lcom/android/systemui/navigationbar/NavBarButtonClickLogger$logHomeButtonClick$2;

    const/4 v2, 0x0

    iget-object p0, p0, Lcom/android/systemui/navigationbar/NavBarButtonClickLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    const-string v3, "NavBarButtonClick"

    invoke-virtual {p0, v3, v0, v1, v2}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/core/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/core/LogMessage;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/core/LogMessage;)V

    return-void
.end method
