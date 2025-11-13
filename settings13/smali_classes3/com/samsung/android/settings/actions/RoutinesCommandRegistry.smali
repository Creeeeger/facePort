.class public Lcom/samsung/android/settings/actions/RoutinesCommandRegistry;
.super Ljava/lang/Object;
.source "RoutinesCommandRegistry.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/actions/RoutinesCommandRegistry$Routine;
    }
.end annotation


# static fields
.field public static final ROUTINES:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/settings/actions/RoutinesCommandRegistry$Routine;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 15
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/actions/RoutinesCommandRegistry;->ROUTINES:Ljava/util/Map;

    .line 16
    new-instance v1, Lcom/samsung/android/settings/actions/RoutinesCommandRegistry$Routine;

    sget v2, Lcom/android/settings/R$string;->data_saver_title:I

    sget v3, Lcom/android/settings/R$drawable;->sec_ic_routines_ic_data_saver:I

    const-string v4, "data_saver_switch"

    const-string v5, "connection_setting"

    invoke-direct {v1, v4, v5, v2, v3}, Lcom/samsung/android/settings/actions/RoutinesCommandRegistry$Routine;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
