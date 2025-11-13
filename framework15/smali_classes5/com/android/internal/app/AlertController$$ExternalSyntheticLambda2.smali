.class public final synthetic Lcom/android/internal/app/AlertController$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# instance fields
.field public final synthetic blacklist f$0:Lcom/android/internal/app/AlertController;

.field public final synthetic blacklist f$1:Landroid/view/View;


# direct methods
.method public synthetic constructor blacklist <init>(Lcom/android/internal/app/AlertController;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/app/AlertController$$ExternalSyntheticLambda2;->f$0:Lcom/android/internal/app/AlertController;

    iput-object p2, p0, Lcom/android/internal/app/AlertController$$ExternalSyntheticLambda2;->f$1:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final whitelist onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 11

    move-object v0, p0

    iget-object v1, v0, Lcom/android/internal/app/AlertController$$ExternalSyntheticLambda2;->f$0:Lcom/android/internal/app/AlertController;

    iget-object v2, v0, Lcom/android/internal/app/AlertController$$ExternalSyntheticLambda2;->f$1:Landroid/view/View;

    move-object v0, v1

    move-object v1, v2

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    invoke-static/range {v0 .. v10}, Lcom/android/internal/app/AlertController;->$r8$lambda$GPBH0ei2ZGwypV5CAvi0FCCRUic(Lcom/android/internal/app/AlertController;Landroid/view/View;Landroid/view/View;IIIIIIII)V

    return-void
.end method
