.class public final synthetic Lcom/samsung/android/settings/share/SelectAppActivity$$ExternalSyntheticLambda9;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/settings/share/structure/DBShareComponent;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/settings/share/structure/DBShareComponent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/share/SelectAppActivity$$ExternalSyntheticLambda9;->f$0:Lcom/samsung/android/settings/share/structure/DBShareComponent;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/share/SelectAppActivity$$ExternalSyntheticLambda9;->f$0:Lcom/samsung/android/settings/share/structure/DBShareComponent;

    check-cast p1, Lcom/samsung/android/settings/share/structure/ShareComponent;

    invoke-static {p0, p1}, Lcom/samsung/android/settings/share/SelectAppActivity;->$r8$lambda$Il1bE8WgZamNHOEYhV_J5OTZd_E(Lcom/samsung/android/settings/share/structure/DBShareComponent;Lcom/samsung/android/settings/share/structure/ShareComponent;)V

    return-void
.end method
