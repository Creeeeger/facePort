.class public interface abstract Lcom/android/systemui/dagger/SysUIComponent;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# virtual methods
.method public abstract createDependency()Lcom/android/systemui/Dependency;
.end method

.method public abstract createDumpManager()Lcom/android/systemui/dump/DumpManager;
.end method

.method public abstract getConfigurationController()Lcom/android/systemui/statusbar/policy/ConfigurationController;
.end method

.method public abstract getInitController()Lcom/android/systemui/InitController;
.end method

.method public abstract getPerUserStartables()Ljava/util/Map;
.end method

.method public abstract getPostStartables()Ljava/util/Map;
.end method

.method public abstract getPreStartables()Ljava/util/Map;
.end method

.method public abstract getSafeUIStartables()Ljava/util/Map;
.end method

.method public abstract getStartableDependencies()Ljava/util/Map;
.end method

.method public abstract getStartables()Ljava/util/Map;
.end method

.method public abstract inject(Lcom/android/systemui/SystemUIAppComponentFactoryBase;)V
.end method

.method public abstract inject(Lcom/android/systemui/doze/AODIntentService;)V
.end method

.method public abstract inject(Lcom/android/systemui/keyguard/KeyguardSliceProvider;)V
.end method

.method public abstract inject(Lcom/android/systemui/people/PeopleProvider;)V
.end method

.method public abstract inject(Lcom/android/systemui/plank/protocol/TestProtocolProvider;)V
.end method

.method public abstract inject(Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;)V
.end method

.method public abstract provideBootAnimationFinishedImpl()Lcom/android/systemui/BootAnimationFinishedCacheImpl;
.end method

.method public abstract provideBootAnimationFinishedTrigger()Lcom/android/systemui/BootAnimationFinishedTrigger;
.end method

.method public abstract provideBootCacheImpl()Lcom/android/systemui/BootCompleteCacheImpl;
.end method
