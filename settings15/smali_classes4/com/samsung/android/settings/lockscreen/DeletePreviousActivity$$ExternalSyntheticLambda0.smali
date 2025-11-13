.class public final synthetic Lcom/samsung/android/settings/lockscreen/DeletePreviousActivity$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/settings/lockscreen/DeletePreviousActivity;

.field public final synthetic f$1:Lcom/android/internal/widget/LockPatternUtils;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/settings/lockscreen/DeletePreviousActivity;Lcom/android/internal/widget/LockPatternUtils;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/lockscreen/DeletePreviousActivity$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/settings/lockscreen/DeletePreviousActivity;

    iput-object p2, p0, Lcom/samsung/android/settings/lockscreen/DeletePreviousActivity$$ExternalSyntheticLambda0;->f$1:Lcom/android/internal/widget/LockPatternUtils;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/samsung/android/settings/lockscreen/DeletePreviousActivity$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/settings/lockscreen/DeletePreviousActivity;

    iget-object p0, p0, Lcom/samsung/android/settings/lockscreen/DeletePreviousActivity$$ExternalSyntheticLambda0;->f$1:Lcom/android/internal/widget/LockPatternUtils;

    sget v0, Lcom/samsung/android/settings/lockscreen/DeletePreviousActivity;->$r8$clinit:I

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->expirePreviousData()Z

    const/4 p0, -0x1

    invoke-virtual {p1, p0}, Landroid/app/Activity;->setResult(I)V

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void
.end method
