.class public abstract Lcom/android/wm/shell/bubbles/DismissViewUtils;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# direct methods
.method public static final setup(Lcom/android/wm/shell/common/bubbles/DismissView;)V
    .locals 21

    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v1, v1, 0x30

    const/16 v2, 0x20

    if-ne v1, v2, :cond_0

    new-instance v1, Lcom/android/wm/shell/common/bubbles/DismissView$Config;

    const v8, 0x7f0703e3

    const v9, 0x1060028

    const v4, 0x7f0a0395

    const v5, 0x7f07101d

    const v6, 0x7f07101d

    const v7, 0x7f0703e2

    const v10, 0x7f080766

    const v11, 0x7f0806cd

    move-object v3, v1

    invoke-direct/range {v3 .. v11}, Lcom/android/wm/shell/common/bubbles/DismissView$Config;-><init>(IIIIIIII)V

    invoke-virtual {v0, v1}, Lcom/android/wm/shell/common/bubbles/DismissView;->setup(Lcom/android/wm/shell/common/bubbles/DismissView$Config;)V

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/android/wm/shell/common/bubbles/DismissView$Config;

    const v17, 0x7f0703e3

    const v18, 0x1060028

    const v13, 0x7f0a0395

    const v14, 0x7f07101d

    const v15, 0x7f07101d

    const v16, 0x7f0703e2

    const v19, 0x7f080766

    const v20, 0x7f0806cc

    move-object v12, v1

    invoke-direct/range {v12 .. v20}, Lcom/android/wm/shell/common/bubbles/DismissView$Config;-><init>(IIIIIIII)V

    invoke-virtual {v0, v1}, Lcom/android/wm/shell/common/bubbles/DismissView;->setup(Lcom/android/wm/shell/common/bubbles/DismissView$Config;)V

    :goto_0
    return-void
.end method
