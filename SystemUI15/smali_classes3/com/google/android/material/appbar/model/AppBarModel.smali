.class public Lcom/google/android/material/appbar/model/AppBarModel;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/google/android/material/appbar/model/view/AppBarView;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final context:Landroid/content/Context;

.field private final kclazz:Lkotlin/reflect/KClass;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/reflect/KClass;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lkotlin/reflect/KClass;Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/KClass;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/material/appbar/model/AppBarModel;->kclazz:Lkotlin/reflect/KClass;

    iput-object p2, p0, Lcom/google/android/material/appbar/model/AppBarModel;->context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public create()Lcom/google/android/material/appbar/model/view/AppBarView;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object p0, p0, Lcom/google/android/material/appbar/model/AppBarModel;->kclazz:Lkotlin/reflect/KClass;

    check-cast p0, Lkotlin/jvm/internal/ClassReference;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Lkotlin/jvm/KotlinReflectionNotSupportedError;

    invoke-direct {p0}, Lkotlin/jvm/KotlinReflectionNotSupportedError;-><init>()V

    throw p0
.end method
