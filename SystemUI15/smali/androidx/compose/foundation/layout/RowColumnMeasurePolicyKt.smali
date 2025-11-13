.class public abstract Landroidx/compose/foundation/layout/RowColumnMeasurePolicyKt;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# direct methods
.method public static final measure(Landroidx/compose/foundation/layout/RowColumnMeasurePolicy;IIIIILandroidx/compose/ui/layout/MeasureScope;Ljava/util/List;[Landroidx/compose/ui/layout/Placeable;II[II)Landroidx/compose/ui/layout/MeasureResult;
    .locals 58

    move-object/from16 v0, p0

    move/from16 v7, p1

    move/from16 v8, p3

    move/from16 v9, p4

    move/from16 v10, p5

    move-object/from16 v11, p7

    move/from16 v12, p10

    int-to-long v13, v10

    sub-int v15, v12, p9

    new-array v6, v15, [I

    const/16 v16, 0x0

    move/from16 v4, p9

    move-object/from16 v17, v6

    move/from16 v18, v15

    move/from16 v6, v16

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v15, 0x0

    :goto_0
    const/16 v19, 0x0

    if-ge v4, v12, :cond_9

    invoke-interface {v11, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v21

    move-object/from16 v5, v21

    check-cast v5, Landroidx/compose/ui/layout/Measurable;

    invoke-static {v5}, Landroidx/compose/foundation/layout/RowColumnImplKt;->getRowColumnParentData(Landroidx/compose/ui/layout/IntrinsicMeasurable;)Landroidx/compose/foundation/layout/RowColumnParentData;

    move-result-object v7

    invoke-static {v7}, Landroidx/compose/foundation/layout/RowColumnImplKt;->getWeight(Landroidx/compose/foundation/layout/RowColumnParentData;)F

    move-result v21

    cmpl-float v23, v21, v16

    if-lez v23, :cond_0

    add-float v6, v6, v21

    add-int/lit8 v3, v3, 0x1

    move/from16 v21, v4

    move-object/from16 v11, v17

    goto/16 :goto_7

    :cond_0
    const v1, 0x7fffffff

    if-ne v9, v1, :cond_1

    goto :goto_1

    :cond_1
    if-eqz v7, :cond_2

    iget-object v1, v7, Landroidx/compose/foundation/layout/RowColumnParentData;->flowLayoutData:Landroidx/compose/foundation/layout/FlowLayoutData;

    if-eqz v1, :cond_2

    int-to-float v7, v9

    iget v1, v1, Landroidx/compose/foundation/layout/FlowLayoutData;->fillCrossAxisFraction:F

    mul-float/2addr v1, v7

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    :cond_2
    :goto_1
    sub-int v7, v8, v2

    aget-object v1, p8, v4

    if-nez v1, :cond_7

    if-eqz v19, :cond_3

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->intValue()I

    move-result v1

    move/from16 v21, v1

    const v1, 0x7fffffff

    goto :goto_2

    :cond_3
    const v1, 0x7fffffff

    const/16 v21, 0x0

    :goto_2
    if-ne v8, v1, :cond_4

    const v22, 0x7fffffff

    goto :goto_4

    :cond_4
    if-gez v7, :cond_5

    const/4 v1, 0x0

    goto :goto_3

    :cond_5
    move v1, v7

    :goto_3
    move/from16 v22, v1

    :goto_4
    if-eqz v19, :cond_6

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->intValue()I

    move-result v1

    move/from16 v19, v1

    goto :goto_5

    :cond_6
    move/from16 v19, v9

    :goto_5
    const/16 v23, 0x0

    const/16 v24, 0x0

    move-object/from16 v1, p0

    move/from16 v25, v2

    move/from16 v2, v24

    move/from16 v26, v3

    move/from16 v3, v21

    move/from16 v21, v4

    move/from16 v4, v22

    move-object/from16 v28, v5

    move/from16 v5, v19

    move v9, v6

    move-object/from16 v11, v17

    move/from16 v6, v23

    invoke-interface/range {v1 .. v6}, Landroidx/compose/foundation/layout/RowColumnMeasurePolicy;->createConstraints-xF2OJ5Q(IIIIZ)J

    move-result-wide v1

    move-object/from16 v3, v28

    invoke-interface {v3, v1, v2}, Landroidx/compose/ui/layout/Measurable;->measure-BRTryo0(J)Landroidx/compose/ui/layout/Placeable;

    move-result-object v1

    goto :goto_6

    :cond_7
    move/from16 v25, v2

    move/from16 v26, v3

    move/from16 v21, v4

    move v9, v6

    move-object/from16 v11, v17

    :goto_6
    invoke-interface {v0, v1}, Landroidx/compose/foundation/layout/RowColumnMeasurePolicy;->mainAxisSize(Landroidx/compose/ui/layout/Placeable;)I

    move-result v2

    invoke-interface {v0, v1}, Landroidx/compose/foundation/layout/RowColumnMeasurePolicy;->crossAxisSize(Landroidx/compose/ui/layout/Placeable;)I

    move-result v3

    sub-int v4, v21, p9

    aput v2, v11, v4

    sub-int v5, v7, v2

    if-gez v5, :cond_8

    const/4 v5, 0x0

    :cond_8
    invoke-static {v10, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    add-int/2addr v2, v4

    move/from16 v7, v25

    add-int/2addr v2, v7

    invoke-static {v15, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    aput-object v1, p8, v21

    move v15, v3

    move v1, v4

    move v6, v9

    move/from16 v3, v26

    :goto_7
    add-int/lit8 v4, v21, 0x1

    move/from16 v7, p1

    move/from16 v9, p4

    move-object/from16 v17, v11

    move-object/from16 v11, p7

    goto/16 :goto_0

    :cond_9
    move v7, v2

    move v9, v6

    move-object/from16 v11, v17

    move v6, v3

    if-nez v6, :cond_a

    sub-int v2, v7, v1

    move-object v1, v0

    move-object v5, v11

    move v0, v15

    const/4 v4, 0x0

    const/16 v27, 0x0

    move/from16 v15, p1

    goto/16 :goto_15

    :cond_a
    const v1, 0x7fffffff

    if-eq v8, v1, :cond_b

    move v10, v8

    goto :goto_8

    :cond_b
    move/from16 v10, p1

    :goto_8
    add-int/lit8 v3, v6, -0x1

    int-to-long v1, v3

    mul-long v4, v13, v1

    sub-int v1, v10, v7

    int-to-long v1, v1

    sub-long/2addr v1, v4

    const-wide/16 v20, 0x0

    cmp-long v3, v1, v20

    if-gez v3, :cond_c

    move-wide/from16 v2, v20

    goto :goto_9

    :cond_c
    move-wide v2, v1

    :goto_9
    long-to-float v1, v2

    div-float/2addr v1, v9

    move-wide/from16 v23, v2

    move-object/from16 v17, v11

    move/from16 v25, v15

    move/from16 v11, p9

    :goto_a
    const-string/jumbo v15, "weightedSize "

    move-object/from16 p5, v15

    const-string/jumbo v15, "weightUnitSpace "

    move-object/from16 v26, v15

    const-string/jumbo v15, "totalWeight "

    move/from16 v28, v9

    const-string v9, "remainingToTarget "

    move-object/from16 v29, v15

    const-string v15, "arrangementSpacingTotal "

    move-wide/from16 v30, v2

    const-string v2, "fixedSpace "

    const-string/jumbo v3, "weightChildrenCount "

    move-object/from16 v32, v9

    const-string v9, "arrangementSpacingPx "

    move-wide/from16 v33, v4

    const-string/jumbo v4, "targetSpace "

    const-string v5, "mainAxisMin "

    if-ge v11, v12, :cond_d

    move-object/from16 v0, p7

    move-object/from16 v35, v17

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroidx/compose/ui/layout/Measurable;

    invoke-static/range {v17 .. v17}, Landroidx/compose/foundation/layout/RowColumnImplKt;->getRowColumnParentData(Landroidx/compose/ui/layout/IntrinsicMeasurable;)Landroidx/compose/foundation/layout/RowColumnParentData;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Landroidx/compose/foundation/layout/RowColumnImplKt;->getWeight(Landroidx/compose/foundation/layout/RowColumnParentData;)F

    move-result v12

    move-object/from16 v17, v15

    mul-float v15, v1, v12

    :try_start_0
    invoke-static {v15}, Ljava/lang/Math;->round(F)I

    move-result v2
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    int-to-long v2, v2

    sub-long v23, v23, v2

    add-int/lit8 v11, v11, 0x1

    move-object/from16 v0, p0

    move/from16 v12, p10

    move/from16 v9, v28

    move-wide/from16 v2, v30

    move-wide/from16 v4, v33

    move-object/from16 v17, v35

    goto :goto_a

    :catch_0
    move-exception v0

    move-object v11, v0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    move-object/from16 v16, v11

    const-string v11, "This log indicates a hard-to-reproduce Compose issue, modified with additional debugging details. Please help us by adding your experiences to the bug link provided. Thank you for helping us improve Compose. https://issuetracker.google.com/issues/297974033 mainAxisMax "

    move/from16 v36, v15

    move/from16 v15, p1

    invoke-static {v8, v15, v11, v5, v4}, Landroidx/compose/foundation/layout/RowColumnMeasurePolicyKt$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-object/from16 v11, v17

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v2, v33

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-object/from16 v2, v32

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v2, v30

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-object/from16 v2, v29

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v2, v28

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-object/from16 v2, v26

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, "itemWeight "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-object/from16 v12, p5

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v1, v36

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/IllegalArgumentException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v0

    throw v0

    :cond_d
    move-object/from16 v0, p7

    move-object v11, v15

    move-object/from16 v35, v17

    move-object/from16 v37, v26

    move/from16 v17, v28

    move-object/from16 v38, v29

    move-object/from16 v39, v32

    move-wide/from16 v28, v33

    move/from16 v15, p1

    move/from16 v12, p9

    move/from16 v26, v6

    move/from16 v41, v25

    const/16 v40, 0x0

    move/from16 v6, p10

    :goto_b
    if-ge v12, v6, :cond_18

    aget-object v25, p8, v12

    if-nez v25, :cond_17

    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v25

    move-object/from16 v6, v25

    check-cast v6, Landroidx/compose/ui/layout/Measurable;

    invoke-static {v6}, Landroidx/compose/foundation/layout/RowColumnImplKt;->getRowColumnParentData(Landroidx/compose/ui/layout/IntrinsicMeasurable;)Landroidx/compose/foundation/layout/RowColumnParentData;

    move-result-object v0

    move-object/from16 v25, v6

    invoke-static {v0}, Landroidx/compose/foundation/layout/RowColumnImplKt;->getWeight(Landroidx/compose/foundation/layout/RowColumnParentData;)F

    move-result v6

    move-object/from16 v32, v11

    move/from16 v42, v17

    move/from16 v11, p4

    move-object/from16 v17, v2

    const v2, 0x7fffffff

    if-ne v11, v2, :cond_f

    :cond_e
    move-object/from16 v33, v3

    move-object/from16 v3, v19

    goto :goto_c

    :cond_f
    if-eqz v0, :cond_e

    iget-object v2, v0, Landroidx/compose/foundation/layout/RowColumnParentData;->flowLayoutData:Landroidx/compose/foundation/layout/FlowLayoutData;

    if-eqz v2, :cond_e

    move-object/from16 v33, v3

    int-to-float v3, v11

    iget v2, v2, Landroidx/compose/foundation/layout/FlowLayoutData;->fillCrossAxisFraction:F

    mul-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object v3, v2

    :goto_c
    cmpl-float v2, v6, v16

    if-lez v2, :cond_16

    cmp-long v2, v23, v20

    const/16 v34, 0x1

    if-gez v2, :cond_10

    const/4 v2, -0x1

    move-object/from16 v36, v4

    move-object/from16 v43, v5

    goto :goto_d

    :cond_10
    if-lez v2, :cond_11

    move-object/from16 v36, v4

    move-object/from16 v43, v5

    move/from16 v2, v34

    goto :goto_d

    :cond_11
    move-object/from16 v36, v4

    move-object/from16 v43, v5

    const/4 v2, 0x0

    :goto_d
    int-to-long v4, v2

    sub-long v23, v23, v4

    mul-float v5, v1, v6

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v4

    add-int/2addr v4, v2

    move/from16 v44, v6

    const/4 v6, 0x0

    invoke-static {v6, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    if-eqz v0, :cond_12

    :try_start_1
    iget-boolean v0, v0, Landroidx/compose/foundation/layout/RowColumnParentData;->fill:Z

    move/from16 v34, v0

    goto :goto_f

    :goto_e
    move/from16 v46, v1

    move/from16 v50, v2

    move-object/from16 v52, v3

    move/from16 v56, v5

    move/from16 v25, v7

    move-object/from16 v49, v17

    move/from16 v7, v26

    move-wide/from16 v53, v28

    move-wide/from16 v47, v30

    move-object/from16 v51, v33

    move-object/from16 v55, v36

    move-object/from16 v11, v43

    move/from16 v57, v44

    move/from16 v17, v4

    goto/16 :goto_13

    :cond_12
    :goto_f
    const v0, 0x7fffffff

    if-eqz v34, :cond_13

    if-eq v4, v0, :cond_13

    move/from16 v22, v4

    goto :goto_10

    :cond_13
    move/from16 v22, v6

    :goto_10
    if-eqz v3, :cond_14

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v27

    goto :goto_11

    :catch_1
    move-exception v0

    goto :goto_e

    :cond_14
    move/from16 v27, v6

    :goto_11
    if-eqz v3, :cond_15

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v34
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_12

    :cond_15
    move/from16 v34, v11

    :goto_12
    const/16 v45, 0x1

    move/from16 v46, v1

    move-object/from16 v1, p0

    move/from16 v50, v2

    move-object/from16 v49, v17

    move-wide/from16 v47, v30

    move/from16 v2, v22

    move-object/from16 v52, v3

    move-object/from16 v51, v33

    move/from16 v3, v27

    move/from16 v17, v4

    move-wide/from16 v53, v28

    move-object/from16 v55, v36

    move/from16 v56, v5

    move-object/from16 v11, v43

    move/from16 v5, v34

    move-object/from16 v0, v25

    move/from16 v57, v44

    move/from16 v25, v7

    move/from16 v7, v26

    move/from16 v6, v45

    :try_start_2
    invoke-interface/range {v1 .. v6}, Landroidx/compose/foundation/layout/RowColumnMeasurePolicy;->createConstraints-xF2OJ5Q(IIIIZ)J

    move-result-wide v1
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_2

    invoke-interface {v0, v1, v2}, Landroidx/compose/ui/layout/Measurable;->measure-BRTryo0(J)Landroidx/compose/ui/layout/Placeable;

    move-result-object v0

    move-object/from16 v1, p0

    invoke-interface {v1, v0}, Landroidx/compose/foundation/layout/RowColumnMeasurePolicy;->mainAxisSize(Landroidx/compose/ui/layout/Placeable;)I

    move-result v2

    invoke-interface {v1, v0}, Landroidx/compose/foundation/layout/RowColumnMeasurePolicy;->crossAxisSize(Landroidx/compose/ui/layout/Placeable;)I

    move-result v3

    sub-int v4, v12, p9

    move-object/from16 v5, v35

    aput v2, v5, v4

    move/from16 v4, v40

    add-int v40, v4, v2

    move/from16 v2, v41

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    aput-object v0, p8, v12

    move/from16 v41, v2

    move/from16 v17, v25

    move-object/from16 v36, v32

    move-object/from16 v33, v37

    move-object/from16 v34, v38

    move-object/from16 v35, v39

    move/from16 v25, v42

    move/from16 v26, v46

    move-wide/from16 v30, v47

    move-object/from16 v37, v49

    move-object/from16 v6, v51

    move-wide/from16 v28, v53

    move-object/from16 v3, v55

    move-object/from16 v32, p5

    goto/16 :goto_14

    :catch_2
    move-exception v0

    :goto_13
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "This log indicates a hard-to-reproduce Compose issue, modified with additional debugging details. Please help us by adding your experiences to the bug link provided. Thank you for helping us improve Compose. https://issuetracker.google.com/issues/300280216 mainAxisMax "

    move-object/from16 v3, v55

    invoke-static {v8, v15, v2, v11, v3}, Landroidx/compose/foundation/layout/RowColumnMeasurePolicyKt$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-object/from16 v6, v51

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-object/from16 v3, v49

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v3, v25

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-object/from16 v3, v32

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v3, v53

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-object/from16 v3, v39

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v3, v47

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-object/from16 v3, v38

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v3, v42

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-object/from16 v3, v37

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v3, v46

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "weight "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v3, v57

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-object/from16 v3, p5

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v3, v56

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, "crossAxisDesiredSize "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v3, v52

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "remainderUnit "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v3, v50

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "childMainAxisSize "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v3, v17

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/IllegalArgumentException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v0

    throw v0

    :cond_16
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "All weights <= 0 should have placeables"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_17
    move-object/from16 v32, p5

    move-object v6, v3

    move-object v3, v4

    move-object/from16 v36, v11

    move/from16 v25, v17

    move-object/from16 v33, v37

    move-object/from16 v34, v38

    move/from16 v4, v40

    move-object/from16 v37, v2

    move-object v11, v5

    move/from16 v17, v7

    move/from16 v7, v26

    move-object/from16 v5, v35

    move-object/from16 v35, v39

    move/from16 v2, v41

    move/from16 v26, v1

    move-object/from16 v1, p0

    :goto_14
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v0, p7

    move-object v4, v3

    move-object v3, v6

    move/from16 v1, v26

    move-object/from16 p5, v32

    move-object/from16 v38, v34

    move-object/from16 v39, v35

    move-object/from16 v2, v37

    move/from16 v6, p10

    move-object/from16 v35, v5

    move/from16 v26, v7

    move-object v5, v11

    move/from16 v7, v17

    move/from16 v17, v25

    move-object/from16 v37, v33

    move-object/from16 v11, v36

    goto/16 :goto_b

    :cond_18
    move-object/from16 v1, p0

    move/from16 v17, v7

    move-object/from16 v5, v35

    move/from16 v4, v40

    move/from16 v2, v41

    int-to-long v3, v4

    add-long v3, v3, v28

    long-to-int v0, v3

    sub-int v3, v8, v17

    const/4 v4, 0x0

    invoke-static {v0, v4, v3}, Lkotlin/ranges/RangesKt___RangesKt;->coerceIn(III)I

    move-result v0

    move/from16 v27, v0

    move v0, v2

    move/from16 v2, v17

    :goto_15
    add-int v2, v2, v27

    if-gez v2, :cond_19

    move v2, v4

    :cond_19
    invoke-static {v2, v15}, Ljava/lang/Math;->max(II)I

    move-result v6

    move/from16 v2, p2

    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    move/from16 v2, v18

    new-array v7, v2, [I

    move v3, v4

    :goto_16
    if-ge v3, v2, :cond_1a

    aput v4, v7, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_16

    :cond_1a
    move-object/from16 v3, p6

    invoke-interface {v1, v6, v5, v7, v3}, Landroidx/compose/foundation/layout/RowColumnMeasurePolicy;->populateMainAxisPositions(I[I[ILandroidx/compose/ui/layout/MeasureScope;)V

    move-object/from16 v1, p0

    move-object/from16 v2, p8

    move-object v4, v7

    move v5, v6

    move v6, v0

    move-object/from16 v7, p11

    move/from16 v8, p12

    move/from16 v9, p9

    move/from16 v10, p10

    invoke-interface/range {v1 .. v10}, Landroidx/compose/foundation/layout/RowColumnMeasurePolicy;->placeHelper([Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/MeasureScope;[III[IIII)Landroidx/compose/ui/layout/MeasureResult;

    move-result-object v0

    return-object v0
.end method
