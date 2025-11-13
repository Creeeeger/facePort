.class public Lcom/android/systemui/util/AnimHelper$BaseAnimatorListener;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# static fields
.field public static final $stable:I = 0x8


# instance fields
.field private final debug:Z

.field private isCanceled:Z

.field private final logPrefix:Ljava/lang/String;

.field private final tag:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/util/AnimHelper$BaseAnimatorListener;->tag:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/systemui/util/AnimHelper$BaseAnimatorListener;->logPrefix:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/android/systemui/util/AnimHelper$BaseAnimatorListener;->debug:Z

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/util/AnimHelper$BaseAnimatorListener;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method public final getDebug()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/systemui/util/AnimHelper$BaseAnimatorListener;->debug:Z

    return p0
.end method

.method public final getLogPrefix()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/util/AnimHelper$BaseAnimatorListener;->logPrefix:Ljava/lang/String;

    return-object p0
.end method

.method public final getTag()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/util/AnimHelper$BaseAnimatorListener;->tag:Ljava/lang/String;

    return-object p0
.end method

.method public final isCanceled()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/systemui/util/AnimHelper$BaseAnimatorListener;->isCanceled:Z

    return p0
.end method

.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2

    iget-boolean p1, p0, Lcom/android/systemui/util/AnimHelper$BaseAnimatorListener;->debug:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/systemui/util/AnimHelper$BaseAnimatorListener;->tag:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/systemui/util/AnimHelper$BaseAnimatorListener;->logPrefix:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " onAnimationCancel isCanceled"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/systemui/util/AnimHelper$BaseAnimatorListener;->isCanceled:Z

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    iget-boolean p1, p0, Lcom/android/systemui/util/AnimHelper$BaseAnimatorListener;->debug:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/systemui/util/AnimHelper$BaseAnimatorListener;->tag:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/systemui/util/AnimHelper$BaseAnimatorListener;->logPrefix:Ljava/lang/String;

    iget-boolean p0, p0, Lcom/android/systemui/util/AnimHelper$BaseAnimatorListener;->isCanceled:Z

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " onAnimationEnd isCanceled = "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2

    iget-boolean p1, p0, Lcom/android/systemui/util/AnimHelper$BaseAnimatorListener;->debug:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/systemui/util/AnimHelper$BaseAnimatorListener;->tag:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/systemui/util/AnimHelper$BaseAnimatorListener;->logPrefix:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " onAnimationStart"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/systemui/util/AnimHelper$BaseAnimatorListener;->isCanceled:Z

    return-void
.end method

.method public final setCanceled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/util/AnimHelper$BaseAnimatorListener;->isCanceled:Z

    return-void
.end method
