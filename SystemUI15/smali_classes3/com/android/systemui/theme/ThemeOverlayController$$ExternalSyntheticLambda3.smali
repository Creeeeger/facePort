.class public final synthetic Lcom/android/systemui/theme/ThemeOverlayController$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/theme/ThemeOverlayController;

.field public final synthetic f$1:Ljava/lang/Boolean;

.field public final synthetic f$2:Landroid/content/om/FabricatedOverlay;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/theme/ThemeOverlayController;Ljava/lang/Boolean;Landroid/content/om/FabricatedOverlay;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/theme/ThemeOverlayController$$ExternalSyntheticLambda3;->f$0:Lcom/android/systemui/theme/ThemeOverlayController;

    iput-object p2, p0, Lcom/android/systemui/theme/ThemeOverlayController$$ExternalSyntheticLambda3;->f$1:Ljava/lang/Boolean;

    iput-object p3, p0, Lcom/android/systemui/theme/ThemeOverlayController$$ExternalSyntheticLambda3;->f$2:Landroid/content/om/FabricatedOverlay;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 7

    iget-object v0, p0, Lcom/android/systemui/theme/ThemeOverlayController$$ExternalSyntheticLambda3;->f$0:Lcom/android/systemui/theme/ThemeOverlayController;

    iget-object v1, p0, Lcom/android/systemui/theme/ThemeOverlayController$$ExternalSyntheticLambda3;->f$1:Ljava/lang/Boolean;

    iget-object p0, p0, Lcom/android/systemui/theme/ThemeOverlayController$$ExternalSyntheticLambda3;->f$2:Landroid/content/om/FabricatedOverlay;

    check-cast p1, Landroid/util/Pair;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "android:color/system_"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const/4 v3, 0x0

    const/16 v4, 0x1c

    if-eqz v1, :cond_0

    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Lcom/google/ux/material/libmonet/dynamiccolor/DynamicColor;

    iget-object v0, v0, Lcom/android/systemui/theme/ThemeOverlayController;->mLightColorScheme:Lcom/android/systemui/monet/ColorScheme;

    iget-object v0, v0, Lcom/android/systemui/monet/ColorScheme;->mMaterialScheme:Lcom/google/ux/material/libmonet/dynamiccolor/DynamicScheme;

    invoke-virtual {p1, v0}, Lcom/google/ux/material/libmonet/dynamiccolor/DynamicColor;->getArgb(Lcom/google/ux/material/libmonet/dynamiccolor/DynamicScheme;)I

    move-result p1

    invoke-virtual {p0, v2, v4, p1, v3}, Landroid/content/om/FabricatedOverlay;->setResourceValue(Ljava/lang/String;IILjava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v1, "_light"

    invoke-static {v2, v1}, Landroidx/concurrent/futures/AbstractResolvableFuture$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v5, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Lcom/google/ux/material/libmonet/dynamiccolor/DynamicColor;

    iget-object v6, v0, Lcom/android/systemui/theme/ThemeOverlayController;->mLightColorScheme:Lcom/android/systemui/monet/ColorScheme;

    iget-object v6, v6, Lcom/android/systemui/monet/ColorScheme;->mMaterialScheme:Lcom/google/ux/material/libmonet/dynamiccolor/DynamicScheme;

    invoke-virtual {v5, v6}, Lcom/google/ux/material/libmonet/dynamiccolor/DynamicColor;->getArgb(Lcom/google/ux/material/libmonet/dynamiccolor/DynamicScheme;)I

    move-result v5

    invoke-virtual {p0, v1, v4, v5, v3}, Landroid/content/om/FabricatedOverlay;->setResourceValue(Ljava/lang/String;IILjava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_dark"

    invoke-static {v1, v2, v5}, Landroidx/activity/ComponentActivity$1$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Lcom/google/ux/material/libmonet/dynamiccolor/DynamicColor;

    iget-object v0, v0, Lcom/android/systemui/theme/ThemeOverlayController;->mDarkColorScheme:Lcom/android/systemui/monet/ColorScheme;

    iget-object v0, v0, Lcom/android/systemui/monet/ColorScheme;->mMaterialScheme:Lcom/google/ux/material/libmonet/dynamiccolor/DynamicScheme;

    invoke-virtual {p1, v0}, Lcom/google/ux/material/libmonet/dynamiccolor/DynamicColor;->getArgb(Lcom/google/ux/material/libmonet/dynamiccolor/DynamicScheme;)I

    move-result p1

    invoke-virtual {p0, v1, v4, p1, v3}, Landroid/content/om/FabricatedOverlay;->setResourceValue(Ljava/lang/String;IILjava/lang/String;)V

    :goto_0
    return-void
.end method
