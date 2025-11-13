.class public final synthetic Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarController$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarController;

.field public final synthetic f$1:Landroid/content/ContentResolver;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarController;Landroid/content/ContentResolver;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarController$$ExternalSyntheticLambda2;->f$0:Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarController;

    iput-object p2, p0, Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarController$$ExternalSyntheticLambda2;->f$1:Landroid/content/ContentResolver;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarController$$ExternalSyntheticLambda2;->f$0:Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarController;

    iget-object p0, p0, Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarController$$ExternalSyntheticLambda2;->f$1:Landroid/content/ContentResolver;

    check-cast p1, Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarDataObserver;

    invoke-static {v0, p0, p1}, Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarController;->$r8$lambda$adDiKmdAMVMhv9cSQpDBvGdrDKo(Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarController;Landroid/content/ContentResolver;Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarDataObserver;)V

    return-void
.end method
