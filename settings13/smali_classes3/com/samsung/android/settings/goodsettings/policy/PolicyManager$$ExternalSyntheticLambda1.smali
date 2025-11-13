.class public final synthetic Lcom/samsung/android/settings/goodsettings/policy/PolicyManager$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/settings/goodsettings/policy/PolicyInfo;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/settings/goodsettings/policy/PolicyInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/goodsettings/policy/PolicyManager$$ExternalSyntheticLambda1;->f$0:Lcom/samsung/android/settings/goodsettings/policy/PolicyInfo;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/goodsettings/policy/PolicyManager$$ExternalSyntheticLambda1;->f$0:Lcom/samsung/android/settings/goodsettings/policy/PolicyInfo;

    check-cast p1, Lcom/samsung/android/settings/goodsettings/policy/PolicyInfo;

    invoke-static {p0, p1}, Lcom/samsung/android/settings/goodsettings/policy/PolicyManager;->$r8$lambda$U4W4zvPJfWXZDw7b5-744RyNKbM(Lcom/samsung/android/settings/goodsettings/policy/PolicyInfo;Lcom/samsung/android/settings/goodsettings/policy/PolicyInfo;)Z

    move-result p0

    return p0
.end method
