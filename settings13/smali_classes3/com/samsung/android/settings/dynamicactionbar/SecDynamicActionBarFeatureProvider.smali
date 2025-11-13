.class public interface abstract Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarFeatureProvider;
.super Ljava/lang/Object;
.source "SecDynamicActionBarFeatureProvider.java"


# virtual methods
.method public abstract bindDynamicActionBarAndGetObserver(Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarController;Landroid/view/ViewGroup;Landroid/os/Bundle;Ljava/lang/CharSequence;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarController;",
            "Landroid/view/ViewGroup;",
            "Landroid/os/Bundle;",
            "Ljava/lang/CharSequence;",
            ")",
            "Ljava/util/List<",
            "Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarDataObserver;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getDynamicActionBarMetaDataList(Ljava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getFirstDynamicActionBarMetaData(Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarController;Ljava/util/List;)Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarController;",
            "Ljava/util/List<",
            "Landroid/os/Bundle;",
            ">;)",
            "Landroid/os/Bundle;"
        }
    .end annotation
.end method
