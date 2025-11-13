.class public final Lnotification/src/com/android/systemui/notification/NotificationHighlightDpPreference;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field public final mIStatuBarSvc:Lcom/android/internal/statusbar/IStatusBarService;

.field public mLastUpdatedTime:J

.field public final mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

.field public final preferenceService:Lcom/samsung/android/sdk/moneta/preference/service/ContentProviderPreferenceServiceImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lnotification/src/com/android/systemui/notification/NotificationHighlightDpPreference$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lnotification/src/com/android/systemui/notification/NotificationHighlightDpPreference$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    const-string v0, "NotificationHighlightDpPreference"

    sput-object v0, Lnotification/src/com/android/systemui/notification/NotificationHighlightDpPreference;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/shade/ShadeExpansionStateManager;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lnotification/src/com/android/systemui/notification/NotificationHighlightDpPreference;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    sget p3, Lcom/samsung/android/sdk/moneta/preference/PreferenceProvider;->$r8$clinit:I

    new-instance p3, Lcom/samsung/android/sdk/moneta/preference/service/ContentProviderPreferenceServiceImpl;

    invoke-direct {p3, p1}, Lcom/samsung/android/sdk/moneta/preference/service/ContentProviderPreferenceServiceImpl;-><init>(Landroid/content/Context;)V

    iput-object p3, p0, Lnotification/src/com/android/systemui/notification/NotificationHighlightDpPreference;->preferenceService:Lcom/samsung/android/sdk/moneta/preference/service/ContentProviderPreferenceServiceImpl;

    const-string p1, "statusbar"

    invoke-static {p1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object p1

    iput-object p1, p0, Lnotification/src/com/android/systemui/notification/NotificationHighlightDpPreference;->mIStatuBarSvc:Lcom/android/internal/statusbar/IStatusBarService;

    sget-object p1, Lnotification/src/com/android/systemui/notification/NotificationHighlightDpPreference;->TAG:Ljava/lang/String;

    const-string p3, "Init"

    invoke-static {p1, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Lnotification/src/com/android/systemui/notification/NotificationHighlightDpPreference$1;

    invoke-direct {p1, p0}, Lnotification/src/com/android/systemui/notification/NotificationHighlightDpPreference$1;-><init>(Lnotification/src/com/android/systemui/notification/NotificationHighlightDpPreference;)V

    iget-object p2, p2, Lcom/android/systemui/shade/ShadeExpansionStateManager;->stateListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p2, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lnotification/src/com/android/systemui/notification/NotificationHighlightDpPreference;->getImpotantPersonList()V

    return-void
.end method


# virtual methods
.method public final getFrequentContactPersonByPreferenceLevel(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 11

    instance-of v0, p1, Lnotification/src/com/android/systemui/notification/NotificationHighlightDpPreference$getFrequentContactPersonByPreferenceLevel$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lnotification/src/com/android/systemui/notification/NotificationHighlightDpPreference$getFrequentContactPersonByPreferenceLevel$1;

    iget v1, v0, Lnotification/src/com/android/systemui/notification/NotificationHighlightDpPreference$getFrequentContactPersonByPreferenceLevel$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lnotification/src/com/android/systemui/notification/NotificationHighlightDpPreference$getFrequentContactPersonByPreferenceLevel$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lnotification/src/com/android/systemui/notification/NotificationHighlightDpPreference$getFrequentContactPersonByPreferenceLevel$1;

    invoke-direct {v0, p0, p1}, Lnotification/src/com/android/systemui/notification/NotificationHighlightDpPreference$getFrequentContactPersonByPreferenceLevel$1;-><init>(Lnotification/src/com/android/systemui/notification/NotificationHighlightDpPreference;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p1, v0, Lnotification/src/com/android/systemui/notification/NotificationHighlightDpPreference$getFrequentContactPersonByPreferenceLevel$1;->result:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lnotification/src/com/android/systemui/notification/NotificationHighlightDpPreference$getFrequentContactPersonByPreferenceLevel$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_4

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    sget-object p1, Lcom/samsung/android/sdk/moneta/preference/entity/PreferenceLevel;->HIGH:Lcom/samsung/android/sdk/moneta/preference/entity/PreferenceLevel;

    iput v3, v0, Lnotification/src/com/android/systemui/notification/NotificationHighlightDpPreference$getFrequentContactPersonByPreferenceLevel$1;->label:I

    iget-object p0, p0, Lnotification/src/com/android/systemui/notification/NotificationHighlightDpPreference;->preferenceService:Lcom/samsung/android/sdk/moneta/preference/service/ContentProviderPreferenceServiceImpl;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/samsung/android/sdk/moneta/common/Logger;->INSTANCE:Lcom/samsung/android/sdk/moneta/common/Logger;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "pdclib[1.0.2]@"

    const-string v2, "Preference-ContentProviderPreferenceServiceImpl"

    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "[getFrequentContactPersonByPreferenceLevel] in"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string v4, "preference_level"

    invoke-virtual {p1}, Lcom/samsung/android/sdk/moneta/preference/entity/PreferenceLevel;->getValue()I

    move-result p1

    invoke-virtual {v3, v4, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object p0, p0, Lcom/samsung/android/sdk/moneta/preference/service/ContentProviderPreferenceServiceImpl;->context:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    sget-object p1, Lcom/samsung/android/sdk/moneta/preference/service/ContentProviderPreferenceServiceImpl;->URI:Landroid/net/Uri;

    const-string v4, "get_frequent_contact_person_by_preference"

    const/4 v5, 0x0

    invoke-virtual {p0, p1, v4, v5, v3}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    if-nez p0, :cond_3

    goto :goto_1

    :cond_3
    const-class p1, Lcom/samsung/android/sdk/moneta/preference/entity/wrapper/v1/PersonWrapper;

    invoke-virtual {p1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    :goto_1
    if-eqz p0, :cond_4

    const-string p1, "frequent_contact_person_by_preference_level"

    const-class v3, Lcom/samsung/android/sdk/moneta/preference/entity/wrapper/v1/PersonWrapper;

    invoke-virtual {p0, p1, v3}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/ArrayList;

    move-result-object p0

    goto :goto_2

    :cond_4
    move-object p0, v5

    :goto_2
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v3, "[getFrequentContactPersonByPreferenceLevel] FrequentContactPersonByPreferenceLevel size: "

    invoke-direct {p1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz p0, :cond_5

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, v3}, Ljava/lang/Integer;-><init>(I)V

    :cond_5
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p0, :cond_6

    new-instance p1, Ljava/util/ArrayList;

    const/16 v0, 0xa

    invoke-static {p0, v0}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v0

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/moneta/preference/entity/wrapper/v1/PersonWrapper;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/samsung/android/sdk/moneta/preference/entity/wrapper/v1/PersonWrapper;->getProperties()Landroid/os/Bundle;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/sdk/moneta/preference/entity/wrapper/v1/PersonProperty;->NAME:Lcom/samsung/android/sdk/moneta/preference/entity/wrapper/v1/PersonProperty;

    invoke-virtual {v3}, Lcom/samsung/android/sdk/moneta/preference/entity/wrapper/v1/PersonProperty;->getKey()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0}, Lcom/samsung/android/sdk/moneta/preference/entity/wrapper/v1/PersonWrapper;->getProperties()Landroid/os/Bundle;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/sdk/moneta/preference/entity/wrapper/v1/PersonProperty;->PHONE_NUMBER:Lcom/samsung/android/sdk/moneta/preference/entity/wrapper/v1/PersonProperty;

    invoke-virtual {v3}, Lcom/samsung/android/sdk/moneta/preference/entity/wrapper/v1/PersonProperty;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    new-instance v10, Landroid/os/Bundle;

    invoke-direct {v10}, Landroid/os/Bundle;-><init>()V

    sget-object v2, Lcom/samsung/android/sdk/moneta/preference/entity/Person$PropertiesKey;->CONTACT_ID:Lcom/samsung/android/sdk/moneta/preference/entity/Person$PropertiesKey;

    invoke-virtual {v2}, Lcom/samsung/android/sdk/moneta/preference/entity/Person$PropertiesKey;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/samsung/android/sdk/moneta/preference/entity/wrapper/v1/PersonWrapper;->getProperties()Landroid/os/Bundle;

    move-result-object v3

    sget-object v5, Lcom/samsung/android/sdk/moneta/preference/entity/wrapper/v1/PersonProperty;->CONTACT_ID:Lcom/samsung/android/sdk/moneta/preference/entity/wrapper/v1/PersonProperty;

    invoke-virtual {v5}, Lcom/samsung/android/sdk/moneta/preference/entity/wrapper/v1/PersonProperty;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcom/samsung/android/sdk/moneta/preference/entity/Person$PropertiesKey;->FACE_ID_LIST:Lcom/samsung/android/sdk/moneta/preference/entity/Person$PropertiesKey;

    invoke-virtual {v2}, Lcom/samsung/android/sdk/moneta/preference/entity/Person$PropertiesKey;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/samsung/android/sdk/moneta/preference/entity/wrapper/v1/PersonWrapper;->getProperties()Landroid/os/Bundle;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/sdk/moneta/preference/entity/wrapper/v1/PersonProperty;->FACE_ID_LIST:Lcom/samsung/android/sdk/moneta/preference/entity/wrapper/v1/PersonProperty;

    invoke-virtual {v4}, Lcom/samsung/android/sdk/moneta/preference/entity/wrapper/v1/PersonProperty;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getIntegerArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->putIntegerArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    new-instance v2, Lcom/samsung/android/sdk/moneta/preference/entity/Person;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/moneta/preference/entity/wrapper/v1/PersonWrapper;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/samsung/android/sdk/moneta/preference/entity/wrapper/v1/PersonWrapper;->getPreferences()Landroid/os/Bundle;

    move-result-object v9

    move-object v5, v2

    invoke-direct/range {v5 .. v10}, Lcom/samsung/android/sdk/moneta/preference/entity/Person;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;)V

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_6
    sget-object p0, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    move-object p1, p0

    :cond_7
    if-ne p1, v1, :cond_8

    return-object v1

    :cond_8
    :goto_4
    check-cast p1, Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    const-string v0, "#personByPreferenceLevel size= "

    invoke-static {p0, v0}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sget-object v0, Lnotification/src/com/android/systemui/notification/NotificationHighlightDpPreference;->TAG:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object p1
.end method

.method public final getImpotantPersonList()V
    .locals 6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lnotification/src/com/android/systemui/notification/NotificationHighlightDpPreference;->mLastUpdatedTime:J

    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-eqz v4, :cond_1

    sub-long v2, v0, v2

    const-wide/32 v4, 0x5265c00

    cmp-long v2, v2, v4

    if-ltz v2, :cond_0

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    :goto_0
    sget-object v2, Lnotification/src/com/android/systemui/notification/NotificationHighlightDpPreference;->TAG:Ljava/lang/String;

    const-string v3, "Persons information needs to be updated"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-wide v0, p0, Lnotification/src/com/android/systemui/notification/NotificationHighlightDpPreference;->mLastUpdatedTime:J

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sget-object v1, Lkotlinx/coroutines/Dispatchers;->IO:Lkotlinx/coroutines/scheduling/DefaultIoScheduler;

    invoke-static {v1}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/internal/ContextScope;

    move-result-object v1

    new-instance v2, Lnotification/src/com/android/systemui/notification/NotificationHighlightDpPreference$getImpotantPersonList$1;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v0, v3}, Lnotification/src/com/android/systemui/notification/NotificationHighlightDpPreference$getImpotantPersonList$1;-><init>(Lnotification/src/com/android/systemui/notification/NotificationHighlightDpPreference;Ljava/util/List;Lkotlin/coroutines/Continuation;)V

    const/4 p0, 0x3

    invoke-static {v1, v3, v3, v2, p0}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    return-void
.end method
