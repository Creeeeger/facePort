.class public final Lcom/android/systemui/edgelighting/effectservice/EffectServiceController;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final mAbsEdgeLightingEffectReflection:Lcom/android/systemui/edgelighting/reflection/AbsEdgeLightingEffectReflection;

.field public final mClassLoader:Ljava/lang/ClassLoader;

.field public final mComponentName:Ljava/lang/String;

.field public final mPackage:Ljava/lang/String;

.field public mStarting:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/edgelighting/effectservice/EffectServiceController;->mStarting:Z

    const-string v0, "createEdgeLightingEffect: "

    const/4 v1, 0x0

    :try_start_0
    const-string v2, "EffectServiceController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_3

    if-nez p3, :cond_0

    goto :goto_2

    :cond_0
    iput-object p2, p0, Lcom/android/systemui/edgelighting/effectservice/EffectServiceController;->mPackage:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/systemui/edgelighting/effectservice/EffectServiceController;->mComponentName:Ljava/lang/String;

    invoke-static {p2}, Lcom/android/systemui/edgelighting/effectservice/EffectServiceController;->clearInflaterConstructMap(Ljava/lang/String;)V

    sget-object p2, Lcom/android/systemui/edgelighting/reflection/content/ReflectionContentContainer;->sContextReflection:Lcom/android/systemui/edgelighting/reflection/content/ContextReflection;

    if-nez p2, :cond_1

    new-instance p2, Lcom/android/systemui/edgelighting/reflection/content/ContextReflection;

    invoke-direct {p2}, Lcom/android/systemui/edgelighting/reflection/content/ContextReflection;-><init>()V

    sput-object p2, Lcom/android/systemui/edgelighting/reflection/content/ReflectionContentContainer;->sContextReflection:Lcom/android/systemui/edgelighting/reflection/content/ContextReflection;

    :cond_1
    sget-object p2, Lcom/android/systemui/edgelighting/reflection/content/ReflectionContentContainer;->sContextReflection:Lcom/android/systemui/edgelighting/reflection/content/ContextReflection;

    iget-object p3, p0, Lcom/android/systemui/edgelighting/effectservice/EffectServiceController;->mPackage:Ljava/lang/String;

    invoke-virtual {p2, p1, p3}, Lcom/android/systemui/edgelighting/reflection/content/ContextReflection;->createPackageContextAsUser(Ljava/lang/Object;Ljava/lang/String;)Landroid/content/Context;

    move-result-object p2

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p3

    iput-object p3, p0, Lcom/android/systemui/edgelighting/effectservice/EffectServiceController;->mClassLoader:Ljava/lang/ClassLoader;

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_2
    :goto_0
    iget-object p3, p0, Lcom/android/systemui/edgelighting/effectservice/EffectServiceController;->mComponentName:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/systemui/edgelighting/effectservice/EffectServiceController;->mClassLoader:Ljava/lang/ClassLoader;

    const/4 v2, 0x1

    invoke-static {p3, v2, v0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object p3

    new-instance v0, Lcom/android/systemui/edgelighting/reflection/AbsEdgeLightingEffectReflection;

    iget-object v2, p0, Lcom/android/systemui/edgelighting/effectservice/EffectServiceController;->mClassLoader:Ljava/lang/ClassLoader;

    invoke-direct {v0, p3, p2, p1, v2}, Lcom/android/systemui/edgelighting/reflection/AbsEdgeLightingEffectReflection;-><init>(Ljava/lang/Class;Landroid/content/Context;Landroid/content/Context;Ljava/lang/ClassLoader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v0

    goto :goto_2

    :goto_1
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3
    :goto_2
    iput-object v1, p0, Lcom/android/systemui/edgelighting/effectservice/EffectServiceController;->mAbsEdgeLightingEffectReflection:Lcom/android/systemui/edgelighting/reflection/AbsEdgeLightingEffectReflection;

    return-void
.end method

.method public static clearInflaterConstructMap(Ljava/lang/String;)V
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "clearInflaterConstructMap packageName="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "EffectServiceController"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p0, :cond_0

    return-void

    :cond_0
    :try_start_0
    const-class v0, Landroid/view/LayoutInflater;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string/jumbo v1, "sConstructorMap"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_3

    :catch_1
    move-exception p0

    goto :goto_4

    :catch_2
    move-exception v0

    :try_start_2
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-eqz v3, :cond_1

    invoke-virtual {v3, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/NoSuchFieldException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    :goto_3
    invoke-virtual {p0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_5

    :goto_4
    invoke-virtual {p0}, Ljava/lang/NoSuchFieldException;->printStackTrace()V

    :cond_3
    :goto_5
    return-void
.end method


# virtual methods
.method public final convertEffectInfo(Lcom/android/systemui/edgelighting/effect/data/EdgeEffectInfo;)Lcom/android/systemui/edgelighting/reflection/EffectInfoReflection;
    .locals 7

    new-instance v0, Lcom/android/systemui/edgelighting/reflection/EffectInfoReflection;

    iget-object p0, p0, Lcom/android/systemui/edgelighting/effectservice/EffectServiceController;->mClassLoader:Ljava/lang/ClassLoader;

    const/4 v1, 0x1

    :try_start_0
    const-string v2, "com.samsung.android.sdk.edgelighting.AbsEdgeLightingEffect$EffectInfo"

    invoke-static {v2, v1, p0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    const/4 p0, 0x0

    :goto_0
    invoke-direct {v0, p0}, Lcom/android/systemui/edgelighting/reflection/EffectInfoReflection;-><init>(Ljava/lang/Class;)V

    iget-object p0, p1, Lcom/android/systemui/edgelighting/effect/data/EdgeEffectInfo;->mEffectColors:[I

    new-array v2, v1, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, [I

    aput-object v4, v2, v3

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    iget-object v4, v0, Lcom/android/systemui/edgelighting/reflection/EffectInfoReflection;->mInstance:Ljava/lang/Object;

    const-string/jumbo v5, "setColors"

    invoke-virtual {v0, v4, v5, v2, p0}, Lcom/android/systemui/edgelighting/reflection/AbstractBaseReflection;->invokeNormalMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p1, Lcom/android/systemui/edgelighting/effect/data/EdgeEffectInfo;->mAppIcon:Landroid/graphics/drawable/Drawable;

    new-array v2, v1, [Ljava/lang/Class;

    const-class v5, Landroid/graphics/drawable/Drawable;

    aput-object v5, v2, v3

    const-string/jumbo v5, "setApplicationIcon"

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v0, v4, v5, v2, p0}, Lcom/android/systemui/edgelighting/reflection/AbstractBaseReflection;->invokeNormalMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p1, Lcom/android/systemui/edgelighting/effect/data/EdgeEffectInfo;->mText:[Ljava/lang/String;

    new-array v2, v1, [Ljava/lang/Class;

    const-class v5, [Ljava/lang/String;

    aput-object v5, v2, v3

    const-string/jumbo v5, "setTickerText"

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v0, v4, v5, v2, p0}, Lcom/android/systemui/edgelighting/reflection/AbstractBaseReflection;->invokeNormalMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean p0, p1, Lcom/android/systemui/edgelighting/effect/data/EdgeEffectInfo;->mIsBlackBG:Z

    new-array v2, v1, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v5, v2, v3

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string/jumbo v6, "setBlackBG"

    invoke-virtual {v0, v4, v6, v2, p0}, Lcom/android/systemui/edgelighting/reflection/AbstractBaseReflection;->invokeNormalMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p1, Lcom/android/systemui/edgelighting/effect/data/EdgeEffectInfo;->mPendingIntent:Landroid/app/PendingIntent;

    new-array v2, v1, [Ljava/lang/Class;

    const-class v6, Landroid/app/PendingIntent;

    aput-object v6, v2, v3

    const-string/jumbo v6, "setPendingIntent"

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v0, v4, v6, v2, p0}, Lcom/android/systemui/edgelighting/reflection/AbstractBaseReflection;->invokeNormalMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean p0, p1, Lcom/android/systemui/edgelighting/effect/data/EdgeEffectInfo;->mInfiniteLighting:Z

    new-array v2, v1, [Ljava/lang/Class;

    aput-object v5, v2, v3

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string/jumbo v5, "setInfinite"

    invoke-virtual {v0, v4, v5, v2, p0}, Lcom/android/systemui/edgelighting/reflection/AbstractBaseReflection;->invokeNormalMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    iget-wide v5, p1, Lcom/android/systemui/edgelighting/effect/data/EdgeEffectInfo;->mLightingDuration:J

    long-to-int p0, v5

    new-array v2, v1, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v2, v3

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string/jumbo v5, "setDuration"

    invoke-virtual {v0, v4, v5, v2, p0}, Lcom/android/systemui/edgelighting/reflection/AbstractBaseReflection;->invokeNormalMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    iget p0, p1, Lcom/android/systemui/edgelighting/effect/data/EdgeEffectInfo;->mStrokeWidth:F

    new-array v2, v1, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    aput-object v5, v2, v3

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string/jumbo v6, "setStrokeWidth"

    invoke-virtual {v0, v4, v6, v2, p0}, Lcom/android/systemui/edgelighting/reflection/AbstractBaseReflection;->invokeNormalMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    iget p0, p1, Lcom/android/systemui/edgelighting/effect/data/EdgeEffectInfo;->mStrokeAlpha:F

    new-array v2, v1, [Ljava/lang/Class;

    aput-object v5, v2, v3

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string/jumbo v5, "setStrokeAlpha"

    invoke-virtual {v0, v4, v5, v2, p0}, Lcom/android/systemui/edgelighting/reflection/AbstractBaseReflection;->invokeNormalMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p1, Lcom/android/systemui/edgelighting/effect/data/EdgeEffectInfo;->mNotificationKey:Ljava/lang/String;

    new-array p1, v1, [Ljava/lang/Class;

    const-class v1, Ljava/lang/String;

    aput-object v1, p1, v3

    const-string/jumbo v1, "setNotificationKey"

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v0, v4, v1, p1, p0}, Lcom/android/systemui/edgelighting/reflection/AbstractBaseReflection;->invokeNormalMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public final dispatchStart(Lcom/android/systemui/edgelighting/effect/data/EdgeEffectInfo;)V
    .locals 5

    const-string v0, "EffectServiceController"

    const-string v1, "dispatchStart"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p1}, Lcom/android/systemui/edgelighting/effectservice/EffectServiceController;->convertEffectInfo(Lcom/android/systemui/edgelighting/effect/data/EdgeEffectInfo;)Lcom/android/systemui/edgelighting/reflection/EffectInfoReflection;

    move-result-object p1

    iget-object v0, p0, Lcom/android/systemui/edgelighting/effectservice/EffectServiceController;->mAbsEdgeLightingEffectReflection:Lcom/android/systemui/edgelighting/reflection/AbsEdgeLightingEffectReflection;

    iget-object v1, v0, Lcom/android/systemui/edgelighting/reflection/AbsEdgeLightingEffectReflection;->mClassLoader:Ljava/lang/ClassLoader;

    const/4 v2, 0x1

    :try_start_0
    const-string v3, "com.samsung.android.sdk.edgelighting.AbsEdgeLightingEffect$EffectInfo"

    invoke-static {v3, v2, v1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    const/4 v1, 0x0

    :goto_0
    new-array v3, v2, [Ljava/lang/Class;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    iget-object p1, p1, Lcom/android/systemui/edgelighting/reflection/EffectInfoReflection;->mInstance:Ljava/lang/Object;

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    iget-object v1, v0, Lcom/android/systemui/edgelighting/reflection/AbsEdgeLightingEffectReflection;->mInstance:Ljava/lang/Object;

    const-string/jumbo v4, "start"

    invoke-virtual {v0, v1, v4, v3, p1}, Lcom/android/systemui/edgelighting/reflection/AbstractBaseReflection;->invokeNormalMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    iput-boolean v2, p0, Lcom/android/systemui/edgelighting/effectservice/EffectServiceController;->mStarting:Z

    return-void
.end method

.method public final dispatchStop()V
    .locals 6

    const-string v0, "EffectServiceController"

    const-string v1, "dispatchStop"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v1, p0, Lcom/android/systemui/edgelighting/effectservice/EffectServiceController;->mStarting:Z

    if-nez v1, :cond_0

    const-string p0, "dispatchStop failed because of mStarting is false."

    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/edgelighting/effectservice/EffectServiceController;->mAbsEdgeLightingEffectReflection:Lcom/android/systemui/edgelighting/reflection/AbsEdgeLightingEffectReflection;

    iget-object v1, v0, Lcom/android/systemui/edgelighting/reflection/AbsEdgeLightingEffectReflection;->mInstance:Ljava/lang/Object;

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string/jumbo v5, "stop"

    invoke-virtual {v0, v1, v5, v4, v3}, Lcom/android/systemui/edgelighting/reflection/AbstractBaseReflection;->invokeNormalMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    iput-boolean v2, p0, Lcom/android/systemui/edgelighting/effectservice/EffectServiceController;->mStarting:Z

    return-void
.end method

.method public final setOnEventListener(Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher$1;)V
    .locals 4

    iget-object p0, p0, Lcom/android/systemui/edgelighting/effectservice/EffectServiceController;->mAbsEdgeLightingEffectReflection:Lcom/android/systemui/edgelighting/reflection/AbsEdgeLightingEffectReflection;

    iget-object v0, p0, Lcom/android/systemui/edgelighting/reflection/AbsEdgeLightingEffectReflection;->mClassLoader:Ljava/lang/ClassLoader;

    const/4 v1, 0x0

    const/4 v2, 0x1

    :try_start_0
    const-string v3, "com.samsung.android.sdk.edgelighting.AbsEdgeLightingEffect$IEdgeLIghtingEffectCallback"

    invoke-static {v3, v2, v0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    move-object v0, v1

    :goto_0
    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    if-eqz p1, :cond_0

    iget-object v1, p1, Lcom/android/systemui/edgelighting/reflection/AbstractProxyReflection;->mProxyInstance:Ljava/lang/Object;

    :cond_0
    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object p1

    iget-object v0, p0, Lcom/android/systemui/edgelighting/reflection/AbsEdgeLightingEffectReflection;->mInstance:Ljava/lang/Object;

    const-string/jumbo v1, "setOnCallback"

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/android/systemui/edgelighting/reflection/AbstractBaseReflection;->invokeNormalMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "{EffectServiceController:,mStarting="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean p0, p0, Lcom/android/systemui/edgelighting/effectservice/EffectServiceController;->mStarting:Z

    const/16 v1, 0x7d

    invoke-static {v0, p0, v1}, Landroidx/compose/animation/ChangeSize$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZC)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
