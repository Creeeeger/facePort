.class public final synthetic Lcom/android/systemui/statusbar/policy/SmartReplyStateInflaterKt$sam$com_android_systemui_plugins_ActivityStarter_OnDismissAction$0;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/plugins/ActivityStarter$OnDismissAction;


# instance fields
.field public final synthetic function:Lkotlin/jvm/functions/Function0;


# direct methods
.method public constructor <init>(Lkotlin/jvm/functions/Function0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/SmartReplyStateInflaterKt$sam$com_android_systemui_plugins_ActivityStarter_OnDismissAction$0;->function:Lkotlin/jvm/functions/Function0;

    return-void
.end method


# virtual methods
.method public final synthetic onDismiss()Z
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/SmartReplyStateInflaterKt$sam$com_android_systemui_plugins_ActivityStarter_OnDismissAction$0;->function:Lkotlin/jvm/functions/Function0;

    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method
