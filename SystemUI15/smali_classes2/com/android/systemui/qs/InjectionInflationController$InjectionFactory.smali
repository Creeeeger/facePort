.class public final Lcom/android/systemui/qs/InjectionInflationController$InjectionFactory;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/view/LayoutInflater$Factory2;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/qs/InjectionInflationController;


# direct methods
.method private constructor <init>(Lcom/android/systemui/qs/InjectionInflationController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/InjectionInflationController$InjectionFactory;->this$0:Lcom/android/systemui/qs/InjectionInflationController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/systemui/qs/InjectionInflationController;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/qs/InjectionInflationController$InjectionFactory;-><init>(Lcom/android/systemui/qs/InjectionInflationController;)V

    return-void
.end method


# virtual methods
.method public final onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 0

    invoke-virtual {p0, p2, p3, p4}, Lcom/android/systemui/qs/InjectionInflationController$InjectionFactory;->onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public final onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 3

    const-string v0, "Could not inflate "

    iget-object v1, p0, Lcom/android/systemui/qs/InjectionInflationController$InjectionFactory;->this$0:Lcom/android/systemui/qs/InjectionInflationController;

    iget-object v1, v1, Lcom/android/systemui/qs/InjectionInflationController;->mInjectionMap:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/qs/InjectionInflationController$InjectionFactory;->this$0:Lcom/android/systemui/qs/InjectionInflationController;

    iget-object p0, p0, Lcom/android/systemui/qs/InjectionInflationController;->mViewInstanceCreatorFactory:Lcom/android/systemui/qs/InjectionInflationController$ViewInstanceCreator$Factory;

    invoke-interface {p0, p2, p3}, Lcom/android/systemui/qs/InjectionInflationController$ViewInstanceCreator$Factory;->build(Landroid/content/Context;Landroid/util/AttributeSet;)Lcom/android/systemui/qs/InjectionInflationController$ViewInstanceCreator;

    move-result-object p0

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/View;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    goto :goto_1

    :goto_0
    new-instance p2, Landroid/view/InflateException;

    invoke-static {v0, p1}, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1, p0}, Landroid/view/InflateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :goto_1
    new-instance p2, Landroid/view/InflateException;

    invoke-static {v0, p1}, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1, p0}, Landroid/view/InflateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :cond_0
    return-object v2
.end method
