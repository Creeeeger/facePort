.class public final synthetic Lcom/samsung/android/settings/share/SelectAppActivity$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/samsung/android/settings/share/SelectAppViewModel;

    invoke-static {p1}, Lcom/samsung/android/settings/share/SelectAppActivity;->$r8$lambda$6rUJ7UylNgBfNmR8lieXiWY-pwY(Lcom/samsung/android/settings/share/SelectAppViewModel;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
