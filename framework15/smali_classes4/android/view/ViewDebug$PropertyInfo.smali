.class abstract Landroid/view/ViewDebug$PropertyInfo;
.super Ljava/lang/Object;
.source "ViewDebug.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/ViewDebug;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "PropertyInfo"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Ljava/lang/annotation/Annotation;",
        "R:",
        "Ljava/lang/reflect/AccessibleObject;",
        ":",
        "Ljava/lang/reflect/Member;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public blacklist entrySuffix:Ljava/lang/String;

.field public final blacklist member:Ljava/lang/reflect/AccessibleObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TR;"
        }
    .end annotation
.end field

.field public final blacklist name:Ljava/lang/String;

.field public final blacklist property:Ljava/lang/annotation/Annotation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field public final blacklist returnType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field public blacklist valueSuffix:Ljava/lang/String;


# direct methods
.method constructor blacklist <init>(Ljava/lang/Class;Ljava/lang/reflect/AccessibleObject;Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TT;>;TR;",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Landroid/view/ViewDebug$PropertyInfo;->entrySuffix:Ljava/lang/String;

    iput-object v0, p0, Landroid/view/ViewDebug$PropertyInfo;->valueSuffix:Ljava/lang/String;

    iput-object p2, p0, Landroid/view/ViewDebug$PropertyInfo;->member:Ljava/lang/reflect/AccessibleObject;

    move-object v0, p2

    check-cast v0, Ljava/lang/reflect/Member;

    invoke-interface {v0}, Ljava/lang/reflect/Member;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/view/ViewDebug$PropertyInfo;->name:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/reflect/AccessibleObject;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    iput-object v0, p0, Landroid/view/ViewDebug$PropertyInfo;->property:Ljava/lang/annotation/Annotation;

    iput-object p3, p0, Landroid/view/ViewDebug$PropertyInfo;->returnType:Ljava/lang/Class;

    return-void
.end method

.method static blacklist forField(Ljava/lang/reflect/Field;Ljava/lang/Class;)Landroid/view/ViewDebug$PropertyInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/annotation/Annotation;",
            ">(",
            "Ljava/lang/reflect/Field;",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Landroid/view/ViewDebug$PropertyInfo<",
            "TT;*>;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Ljava/lang/reflect/Field;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    new-instance v0, Landroid/view/ViewDebug$FieldPI;

    invoke-direct {v0, p0, p1}, Landroid/view/ViewDebug$FieldPI;-><init>(Ljava/lang/reflect/Field;Ljava/lang/Class;)V

    return-object v0
.end method

.method static blacklist forMethod(Ljava/lang/reflect/Method;Ljava/lang/Class;)Landroid/view/ViewDebug$PropertyInfo;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/annotation/Annotation;",
            ">(",
            "Ljava/lang/reflect/Method;",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Landroid/view/ViewDebug$PropertyInfo<",
            "TT;*>;"
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Ljava/lang/Void;

    if-eq v1, v2, :cond_2

    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v1

    array-length v1, v1
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    nop

    invoke-virtual {p0, p1}, Ljava/lang/reflect/Method;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_1

    return-object v0

    :cond_1
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    new-instance v0, Landroid/view/ViewDebug$MethodPI;

    invoke-direct {v0, p0, p1}, Landroid/view/ViewDebug$MethodPI;-><init>(Ljava/lang/reflect/Method;Ljava/lang/Class;)V

    const-string v1, "()"

    iput-object v1, v0, Landroid/view/ViewDebug$PropertyInfo;->entrySuffix:Ljava/lang/String;

    const-string v1, ";"

    iput-object v1, v0, Landroid/view/ViewDebug$PropertyInfo;->valueSuffix:Ljava/lang/String;

    return-object v0

    :cond_2
    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    return-object v0
.end method


# virtual methods
.method public abstract blacklist invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method
