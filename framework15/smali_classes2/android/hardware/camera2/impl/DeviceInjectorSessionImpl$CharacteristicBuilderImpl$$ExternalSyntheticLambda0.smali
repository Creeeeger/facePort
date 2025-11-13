.class public final synthetic Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl$CharacteristicBuilderImpl$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic blacklist f$0:Ljava/util/ArrayList;


# direct methods
.method public synthetic constructor blacklist <init>(Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl$CharacteristicBuilderImpl$$ExternalSyntheticLambda0;->f$0:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final whitelist test-api accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl$CharacteristicBuilderImpl$$ExternalSyntheticLambda0;->f$0:Ljava/util/ArrayList;

    check-cast p1, Landroid/util/Size;

    invoke-static {v0, p1}, Landroid/hardware/camera2/impl/DeviceInjectorSessionImpl$CharacteristicBuilderImpl;->lambda$build$0(Ljava/util/ArrayList;Landroid/util/Size;)V

    return-void
.end method
