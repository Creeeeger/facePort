.class public final synthetic Lcom/samsung/android/settings/share/SelectAppActivity$$ExternalSyntheticLambda17;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/ToIntFunction;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final applyAsInt(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/samsung/android/settings/share/structure/DBShareComponent;

    invoke-virtual {p1}, Lcom/samsung/android/settings/share/structure/DBShareComponent;->getIdx()I

    move-result p0

    return p0
.end method
