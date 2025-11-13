.class public final synthetic Lcom/android/wm/shell/bubbles/BadgedImageView$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/wm/shell/bubbles/BadgedImageView;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/bubbles/BadgedImageView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/bubbles/BadgedImageView$$ExternalSyntheticLambda2;->f$0:Lcom/android/wm/shell/bubbles/BadgedImageView;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BadgedImageView$$ExternalSyntheticLambda2;->f$0:Lcom/android/wm/shell/bubbles/BadgedImageView;

    sget v0, Lcom/android/wm/shell/bubbles/BadgedImageView;->$r8$clinit:I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/wm/shell/bubbles/BadgedImageView;->animateDotScale(FLjava/lang/Runnable;)V

    return-void
.end method
