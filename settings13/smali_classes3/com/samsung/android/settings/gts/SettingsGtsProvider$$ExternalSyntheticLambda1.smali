.class public final synthetic Lcom/samsung/android/settings/gts/SettingsGtsProvider$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/samsung/android/gtscell/data/GtsSupplier;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/settings/cube/gts/GtsItemWrapper;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/settings/cube/gts/GtsItemWrapper;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/gts/SettingsGtsProvider$$ExternalSyntheticLambda1;->f$0:Lcom/samsung/android/settings/cube/gts/GtsItemWrapper;

    return-void
.end method


# virtual methods
.method public final get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/gts/SettingsGtsProvider$$ExternalSyntheticLambda1;->f$0:Lcom/samsung/android/settings/cube/gts/GtsItemWrapper;

    check-cast p1, Lcom/samsung/android/gtscell/data/GtsItemBuilder;

    invoke-static {p0, p1}, Lcom/samsung/android/settings/gts/SettingsGtsProvider;->$r8$lambda$sD3ivrYto6o5Z2yuR-SXNhU9raw(Lcom/samsung/android/settings/cube/gts/GtsItemWrapper;Lcom/samsung/android/gtscell/data/GtsItemBuilder;)Lcom/samsung/android/gtscell/data/GtsItem;

    move-result-object p0

    return-object p0
.end method
