SELECT DL_MASTER, Buyer_State, VantageScore4, FT_HIT, LINKF001
FROM    [dbo].[SC60_Dev_Final] A  
		JOIN [dbo].[SC60_Dev_LN1516] LN ON A.DL_MASTER = LN.DealNo 
		JOIN [Temp].[dbo].[TU_DealNumber] D ON A.DL_MASTER = D.ApplicationID
		JOIN [Temp].[dbo].[TU_ACC_REJ final 1] TU1 ON D.ANALYTICSMATCHKEY = TU1.ANALYTICSMATCHKEY
		JOIN [Temp].[dbo].[TU_ACC_REJ final 2] TU2 ON TU1.ANALYTICSMATCHKEY = TU2.ANALYTICSMATCHKEY
		JOIN [Temp].[dbo].[TU_FT_final] FT ON TU2.ANALYTICSMATCHKEY = FT.ANALYTICSMATCHKEY

--WHERE 
--Buyer_State = 'FL'
--AND FICO between 250 and 900
--AND FT_HIT = 0
--AND DEL_STA = 'PRE'