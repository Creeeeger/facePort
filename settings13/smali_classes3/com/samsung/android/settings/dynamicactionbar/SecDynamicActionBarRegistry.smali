.class public Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarRegistry;
.super Ljava/lang/Object;
.source "SecDynamicActionBarRegistry.java"


# static fields
.field public static final PARENT_TO_CATEGORY_KEY_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 15
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/dynamicactionbar/SecDynamicActionBarRegistry;->PARENT_TO_CATEGORY_KEY_MAP:Ljava/util/Map;

    .line 17
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const-string v2, "com.android.settings.category.ia.homepage"

    .line 18
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 19
    const-class v2, Lcom/android/settings/homepage/TopLevelSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
