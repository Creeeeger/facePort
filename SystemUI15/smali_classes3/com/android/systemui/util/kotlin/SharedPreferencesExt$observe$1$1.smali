.class final Lcom/android/systemui/util/kotlin/SharedPreferencesExt$observe$1$1;
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
.field final synthetic $listener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

.field final synthetic $this_observe:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Landroid/content/SharedPreferences;Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/util/kotlin/SharedPreferencesExt$observe$1$1;->$this_observe:Landroid/content/SharedPreferences;

    iput-object p2, p0, Lcom/android/systemui/util/kotlin/SharedPreferencesExt$observe$1$1;->$listener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/android/systemui/util/kotlin/SharedPreferencesExt$observe$1$1;->invoke()V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/util/kotlin/SharedPreferencesExt$observe$1$1;->$this_observe:Landroid/content/SharedPreferences;

    iget-object p0, p0, Lcom/android/systemui/util/kotlin/SharedPreferencesExt$observe$1$1;->$listener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    return-void
.end method
