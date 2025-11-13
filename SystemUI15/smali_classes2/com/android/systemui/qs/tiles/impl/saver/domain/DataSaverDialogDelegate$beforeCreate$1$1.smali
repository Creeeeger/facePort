.class public final Lcom/android/systemui/qs/tiles/impl/saver/domain/DataSaverDialogDelegate$beforeCreate$1$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/qs/tiles/impl/saver/domain/DataSaverDialogDelegate;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/tiles/impl/saver/domain/DataSaverDialogDelegate;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/impl/saver/domain/DataSaverDialogDelegate$beforeCreate$1$1;->this$0:Lcom/android/systemui/qs/tiles/impl/saver/domain/DataSaverDialogDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object p1, p0, Lcom/android/systemui/qs/tiles/impl/saver/domain/DataSaverDialogDelegate$beforeCreate$1$1;->this$0:Lcom/android/systemui/qs/tiles/impl/saver/domain/DataSaverDialogDelegate;

    iget-object p1, p1, Lcom/android/systemui/qs/tiles/impl/saver/domain/DataSaverDialogDelegate;->backgroundContext:Lkotlin/coroutines/CoroutineContext;

    invoke-static {p1}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/internal/ContextScope;

    move-result-object p1

    new-instance p2, Lcom/android/systemui/qs/tiles/impl/saver/domain/DataSaverDialogDelegate$beforeCreate$1$1$1;

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/impl/saver/domain/DataSaverDialogDelegate$beforeCreate$1$1;->this$0:Lcom/android/systemui/qs/tiles/impl/saver/domain/DataSaverDialogDelegate;

    const/4 v1, 0x0

    invoke-direct {p2, v0, v1}, Lcom/android/systemui/qs/tiles/impl/saver/domain/DataSaverDialogDelegate$beforeCreate$1$1$1;-><init>(Lcom/android/systemui/qs/tiles/impl/saver/domain/DataSaverDialogDelegate;Lkotlin/coroutines/Continuation;)V

    const/4 v0, 0x3

    invoke-static {p1, v1, v1, p2, v0}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/impl/saver/domain/DataSaverDialogDelegate$beforeCreate$1$1;->this$0:Lcom/android/systemui/qs/tiles/impl/saver/domain/DataSaverDialogDelegate;

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/impl/saver/domain/DataSaverDialogDelegate;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string p1, "data_saver_dialog_shown"

    const/4 p2, 0x1

    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method
