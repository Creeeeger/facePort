.class final Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper$supportThemeIcon$1;
.super Lkotlin/jvm/internal/Lambda;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper;


# direct methods
.method public constructor <init>(Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper$supportThemeIcon$1;->this$0:Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper$supportThemeIcon$1;->this$0:Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper;

    iget-object p0, p0, Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper;->context:Landroid/content/Context;

    sget-object v0, Lcom/android/systemui/navigationbar/util/NavigationModeUtil;->INSTANCE:Lcom/android/systemui/navigationbar/util/NavigationModeUtil;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "current_sec_active_themepackage"

    invoke-static {p0, v0}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    if-lez p0, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
