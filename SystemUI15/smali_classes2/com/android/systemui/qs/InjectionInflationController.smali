.class public final Lcom/android/systemui/qs/InjectionInflationController;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final mFactory:Lcom/android/systemui/qs/InjectionInflationController$InjectionFactory;

.field public final mInjectionMap:Landroid/util/ArrayMap;

.field public final mViewInstanceCreatorFactory:Lcom/android/systemui/qs/InjectionInflationController$ViewInstanceCreator$Factory;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/InjectionInflationController$ViewInstanceCreator$Factory;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/qs/InjectionInflationController;->mInjectionMap:Landroid/util/ArrayMap;

    new-instance v0, Lcom/android/systemui/qs/InjectionInflationController$InjectionFactory;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/qs/InjectionInflationController$InjectionFactory;-><init>(Lcom/android/systemui/qs/InjectionInflationController;I)V

    iput-object v0, p0, Lcom/android/systemui/qs/InjectionInflationController;->mFactory:Lcom/android/systemui/qs/InjectionInflationController$InjectionFactory;

    iput-object p1, p0, Lcom/android/systemui/qs/InjectionInflationController;->mViewInstanceCreatorFactory:Lcom/android/systemui/qs/InjectionInflationController$ViewInstanceCreator$Factory;

    const-class p1, Lcom/android/systemui/qs/InjectionInflationController$ViewInstanceCreator;

    invoke-virtual {p1}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object p1

    array-length v0, p1

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    const-class v3, Landroid/view/View;

    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v3

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/systemui/qs/InjectionInflationController;->mInjectionMap:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
