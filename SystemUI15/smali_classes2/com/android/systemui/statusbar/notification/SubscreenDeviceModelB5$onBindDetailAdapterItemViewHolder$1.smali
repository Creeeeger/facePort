.class public final Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$onBindDetailAdapterItemViewHolder$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/samsung/android/sdk/scs/base/tasks/OnCompleteListener;


# instance fields
.field public final synthetic $inputText:Lkotlin/jvm/internal/Ref$ObjectRef;

.field public final synthetic $neuralTranslate:Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslator;

.field public final synthetic this$0:Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;


# direct methods
.method public constructor <init>(Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslator;Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslator;",
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$onBindDetailAdapterItemViewHolder$1;->$neuralTranslate:Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslator;

    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$onBindDetailAdapterItemViewHolder$1;->$inputText:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object p3, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$onBindDetailAdapterItemViewHolder$1;->this$0:Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onComplete(Lcom/samsung/android/sdk/scs/base/tasks/Task;)V
    .locals 1

    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$onBindDetailAdapterItemViewHolder$1;->$inputText:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object p1, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$onBindDetailAdapterItemViewHolder$1;->$neuralTranslate:Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslator;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslator;->identifyLanguage(Ljava/lang/String;)Lcom/samsung/android/sdk/scs/base/tasks/TaskImpl;

    move-result-object p1

    new-instance v0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$onBindDetailAdapterItemViewHolder$1$1;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$onBindDetailAdapterItemViewHolder$1;->this$0:Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$onBindDetailAdapterItemViewHolder$1$1;-><init>(Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;)V

    invoke-virtual {p1, v0}, Lcom/samsung/android/sdk/scs/base/tasks/TaskImpl;->addOnCompleteListener(Lcom/samsung/android/sdk/scs/base/tasks/OnCompleteListener;)Lcom/samsung/android/sdk/scs/base/tasks/TaskImpl;

    return-void
.end method
